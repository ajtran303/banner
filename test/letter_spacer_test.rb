require "./lib/letter_spacer"
require "minitest/autorun"
require "minitest/pride"

class LetterSpacerTest < Minitest::Test

  def setup
    @letter_spacer = LetterSpacer.new
  end

  def test_it_exists
    assert_instance_of LetterSpacer, @letter_spacer
  end

end
