# frozen_string_literal: true

require 'uri'
require 'forwardable'

# Url extend URI module
class Url
  attr_accessor :url

  extend Forwardable
  def_delegators @url, :scheme, :host

  include Comparable

  def initialize(url)
    @url = URI(url)
  end

  def scheme
    url.scheme
  end

  def host
    url.host
  end

  def query_params
    Hash[url.query.split('&').collect { |param| split(param) }]
  end

  def query_param(key, value = nil)
    return query_params[key] if query_params.key? key

    value
  end

  def ==(other)
    url == other.url
  end

  private

  def split(param)
    key, value = param.split('=')
    [key.to_sym, value]
  end
end
