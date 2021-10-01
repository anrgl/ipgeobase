# frozen_string_literal: true

def fizz_buzz(start, stop)
  return unless start <= stop

  result = ''
  start.upto(stop) do |num|
    result += 'Fizz' if (num % 3).zero?
    result += 'Buzz' if (num % 5).zero?
    result += num.to_s unless (num % 3).zero? || (num % 5).zero?
    result += ' '
  end
  result.strip
end
