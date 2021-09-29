# frozen_string_literal: true

def fizz_buzz(start, stop)
  if start <= stop
    result = ''
    start.upto(stop) do |num|
      result += 'Fizz' if num % 3 == 0
      result += 'Buzz' if num % 5 == 0
      result += num.to_s unless num % 3 == 0 || num % 5 == 0
      result += ' '
    end
    result.strip
  end
end
