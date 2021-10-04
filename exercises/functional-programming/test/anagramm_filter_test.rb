# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/anagramm_filter'

class AnagrammFilterTest < Minitest::Test
  def test_anagramm_filter
    assert_equal [], anagramm_filter('laser', %w[lazing lazy lacer])
    assert_equal %w[aabb bbaa], anagramm_filter('abba', %w[aabb abcd bbaa dada])
    assert_equal %w[carer racer], anagramm_filter('racer', %w[crazer carer racar caers racer])
  end
end
