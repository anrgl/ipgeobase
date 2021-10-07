# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/url'

class UrlTest < Minitest::Test
  def setup
    @yandex_url = 'http://yandex.ru?key=value&key2=value2'
    @google_url = 'https://google.com:80?a=b&c=d&lala=value'
  end

  def test_yandex
    url = Url.new @yandex_url

    assert_equal 'http', url.scheme
    assert_equal 'yandex.ru', url.host

    params = { key: 'value', key2: 'value2' }

    assert_equal params, url.query_params
    assert_equal 'value', url.query_param(:key)
    assert_equal 'value2', url.query_param(:key2, 'lala')
    assert_equal 'ehu', url.query_param(:new, 'ehu')
  end

  def test_yandex_equals?
    url = Url.new @yandex_url

    assert url == Url.new(@yandex_url)
    assert url != Url.new(@google_url)
  end

  def test_google
    url = Url.new @google_url

    assert_equal 'https', url.scheme
    assert_equal 'google.com', url.host

    params = { a: 'b', c: 'd', lala: 'value' }

    assert_equal params, url.query_params
    assert_nil url.query_param(:key)
  end

  def test_google_equals?
    url = Url.new @google_url
    assert url == Url.new(@google_url)
    assert url != Url.new('https://google.com')
    assert url != Url.new(@google_url.sub('80', '443'))
  end
end
