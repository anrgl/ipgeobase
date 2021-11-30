# frozen_string_literal: true

require_relative 'test_helper'

# IpgeobaseTest tests for Ipgeobase module
class IpgeobaseTest < Minitest::Test
  XML = "
  <query>
      <status>success</status>
      <country>United States</country>
      <countryCode>US</countryCode>
      <region>VA</region>
      <regionName>Virginia</regionName>
      <city>Ashburn</city>
      <zip>20149</zip>
      <lat>39.03</lat>
      <lon>-77.5</lon>
      <timezone>America/New_York</timezone>
      <isp>Google LLC</isp>
      <org>Google Public DNS</org>
      <as>AS15169 Google LLC</as>
      <query>8.8.8.8</query>
  </query>
  "
  def setup
    stub_request(:get, "http://ip-api.com/xml/8.8.8.8")
      .with(
        headers: {
          "Accept" => "*/*",
          "Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3",
          "User-Agent" => "Ruby"
        }
      )
      .to_return(status: 200, body: XML, headers: {})

    @ip_meta = Ipgeobase.lookup("8.8.8.8")
  end

  def test_ip_city
    assert @ip_meta.city, "Ashburn"
  end

  def test_ip_country_and_code
    assert @ip_meta.country, "United States"
    assert @ip_meta.country_code, "US"
  end

  def test_ip_lat_and_lon
    assert @ip_meta.lat, 39.03
    assert @ip_meta.lon, -77.5
  end
end
