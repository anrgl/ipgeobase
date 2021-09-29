# frozen_string_literal: true

def fibonacci(n)
  return if n <= 0
  return 0 if n == 1
  return 1 if n == 2
  return fibonacci(n - 1) + fibonacci(n - 2)
end


puts fibonacci(gets.to_i)