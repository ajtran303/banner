require "./lib/letter_spacer"
require "minitest/autorun"
require "minitest/pride"

class LetterSpacerTest < Minitest::Test

  # almost none of these tests will work
  # because they are all private methods

  def setup
    @letter_spacer = LetterSpacer.new(["Hello"])
  end

  def test_it_exists
    assert_instance_of LetterSpacer, @letter_spacer
  end

  def test_it_can_read_a_message
    skip
    assert_equal = ["Hello"], @letter_spacer.message
    assert_instance_of Array, @letter_spacer.message
  end

  def test_it_can_split_characters_into_an_array
    skip
    assert_equal ["H", "e", "l", "l", "o"], @letter_spacer.split_it
  end

  def test_it_can_get_spaces
    skip
    assert_equal [" ", " ", " ", " ", " "], @letter_spacer.generate_spaces
  end

  def test_it_can_zip_characters_and_spaces
    skip
    assert_equal ["H", " ", "e", " ", "l", " ", "l", " ", "o", " "], @letter_spacer.zip_it
  end

  def test_it_can_be_a_string
    skip
    assert_equal "H e l l o ", @letter_spacer.string_it
    assert_equal 10, @letter_spacer.string_it.length
  end

  def test_it_knows_how_many_spaces_are_needed
    skip
    assert_equal ((40 - 10) / 2), @letter_spacer.needed_spaces
  end

  def test_it_can_prepend_spaces_to_the_string
    skip
    assert_equal "               H e l l o ", @letter_spacer.space_it
  end

end
