# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/reverse'

class ReverseTest < Minitest::Test
  def test_revers_one_word
    assert_equal 'telxeH', reverse('Hexlet')
  end

  def test_revers_sentence
    assert_equal '!evoL enO telxeH ', reverse(' Hexlet One Love!')
  end

  def test_revers_word_with_dashes
    assert_equal 'ssen-em-os-ewA', reverse('Awe-so-me-ness')
  end
end
