# frozen_string_literal: true

def fibonacci(num)
  return if num <= 0

  return 0 if num == 1

  return 1 if num == 2

  fibonacci(num - 1) + fibonacci(num - 2)
end
