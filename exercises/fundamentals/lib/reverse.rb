# frozen_string_literal: true

def reverse(str)
  result = ''
  i = 0
  while i < str.length
    result += str[str.length - i - 1]
    i += 1
  end
  result
end
