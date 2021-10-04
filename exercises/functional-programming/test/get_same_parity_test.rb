# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/get_same_parity'

class GetSameParityTest < Minitest::Test
  def test_get_same_parity
    assert_equal [], get_same_parity([])
    assert_equal [1, 1, 1, 1], get_same_parity([1, 1, 1, 1])
    assert_equal [1, 3], get_same_parity([1, 2, 3])
    assert_equal [2, 10, 20], get_same_parity([2, 10, 15, 20])
    assert_equal [12_345], get_same_parity([12_345, 32_154, 112_332])
  end
end
