# frozen_string_literal: true

CENSOR = '$#%!'

def make_censored(text, stop_words)
  text.split.map do |word|
    stop_words.include?(word) ? CENSOR : word
  end.join(' ')
end
