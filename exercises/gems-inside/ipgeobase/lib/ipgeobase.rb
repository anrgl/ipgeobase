# frozen_string_literal: true

require "uri"
require "open-uri"
require "addressable"
require_relative "ipgeobase/version"
require "happymapper"

# Ipgeobase module provide methods for getting info about ip
module Ipgeobase
  class Error < StandardError; end

  BASE_URI = "http://ip-api.com/xml"

  def self.lookup(ip)
    uri = Addressable::URI.parse("#{BASE_URI}/#{ip}")
    res = Net::HTTP.get_response(uri)
    @map = HappyMapper.parse(res.body)
  end

  def city
    @map.city
  end

  def country
    @map.country
  end

  def country_code
    @map.country_code
  end

  def lat
    @map.lat
  end

  def lon
    @map.lon
  end
end
