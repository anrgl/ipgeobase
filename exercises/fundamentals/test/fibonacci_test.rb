# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/fibonacci'

class FibonacciTest < Minitest::Test
  def test_fibonacci
    assert_nil fibonacci(-100)
    assert_nil fibonacci(0)
    assert_equal 0, fibonacci(1)
    assert_equal 1, fibonacci(2)
    assert_equal 34, fibonacci(10)
    assert_equal 377, fibonacci(15)
    assert_equal 46_368, fibonacci(25)
  end
end
