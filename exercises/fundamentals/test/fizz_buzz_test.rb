# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_nil fizz_buzz(1, 0)
    assert_equal '7', fizz_buzz(7, 7)
    assert_equal '1 2 Fizz 4 Buzz', fizz_buzz(1, 5)
    assert_equal '11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz', fizz_buzz(11, 20)
  end
end
