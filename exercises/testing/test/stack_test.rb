# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

# StackTest class
class StackTest < Minitest::Test
  def test_stack_is_empty
    stack = Stack.new
    assert stack.empty?
  end

  def test_stack_push_one_element
    stack = Stack.new.push!(1)
    assert_equal stack.to_a, [1]
  end

  def test_stack_new
    stack = Stack.new([1, 2])
    assert_equal stack.to_a, [1, 2]
  end

  def test_stack_pop_top_element
    stack = Stack.new([1, 2])
    assert_equal stack.pop!, 2
    assert_equal stack.to_a, [1]
  end

  def test_empty_stack_pop
    stack = Stack.new
    assert_nil stack.pop!
  end

  def test_stack_to_array
    stack = Stack.new
    assert stack.to_a.is_a?(Array)
  end

  def test_stack_clear!
    stack = Stack.new([1, 2])
    stack.clear!
    assert stack.empty?
  end
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
