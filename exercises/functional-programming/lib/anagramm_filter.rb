# frozen_string_literal: true

def anagramm_filter(word, list = [])
  list.filter do |l|
    word.chars.sort == l.chars.sort
  end
end
