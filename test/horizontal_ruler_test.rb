require "./lib/horizontal_ruler"
require "minitest/autorun"
require "minitest/pride"

class HorizontalRulerTest < MiniTest::Test

  def setup
    @h_ruler = HorizontalRuler.new
  end

  def test_it_can_render_bars
    expected =  "========================================"

    assert_equal expected, @h_ruler.render_bars
  end

  def test_it_can_double_render_bars
    expected =  "========================================\n" +
                "========================================"

    assert_equal expected, @h_ruler.double_render_bars
  end

  def test_it_can_render_a_bunch_of_dots
    expected =  "::::::::::::::::::::::::::::::::::::::::"

    assert_equal expected, @h_ruler.render_dots
  end

  def test_it_can_double_render_dots
    expected =  "::::::::::::::::::::::::::::::::::::::::\n" +
                "::::::::::::::::::::::::::::::::::::::::"

    assert_equal expected, @h_ruler.double_render_dots
  end

  def test_it_can_render_squiggles_left_or_right
    expected =  "~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ "
    assert_equal expected, @h_ruler.render_squiggles_left

    expected =  " ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~"
    assert_equal expected, @h_ruler.render_squiggles_right
  end

  def test_it_can_render_super_squiggles
    expected =  "~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ \n" +
                " ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~"

    assert_equal expected, @h_ruler.render_super_squiggles
  end

  def test_it_has_a_helper_method_to_duplicate_chars_any_number_of_times
    expected =  "========================================"

    assert_equal expected, @h_ruler.send(:duplicate, "=", 40)
    # testing private method
    # NOT A GREAT PRACTICE! IT WILL WORK THOUGH NOT ENCOURAGED
  end

end
