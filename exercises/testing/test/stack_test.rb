# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

# StackTest class
class StackTest < Minitest::Test
  # def setup
  #   @stack = Stack.new
  # end

  # def teardown
  #   @stack.clear!
  # end

  def test_stack_is_empty
    stack = Stack.new
    assert stack.empty?
  end

  def test_stack_push_one_element
    stack = Stack.new.push!(1)
    assert_equal stack.size, 1
  end

  def test_stack_new
    stack = Stack.new([1, 2])
    assert_equal stack.size, 2
  end

  def test_stack_pop_top_element
    stack = Stack.new([1, 2])
    assert_equal stack.pop!, 2
    assert_equal stack.to_a, Stack.new([1]).to_a
  end

  def test_empty_stack_pop
    stack = Stack.new
    assert_nil stack.pop!, nil
  end

  def test_stack_to_array
    stack = Stack.new
    assert stack.to_a.is_a?(Array)
  end
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
