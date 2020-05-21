require "./lib/horizontal_ruler"

class FlagMenu
  include HorizontalRuler

  def initialize
    show_flag_options
  end

  def show_flag_options
    show_single_options
    show_double_options
    show_squiggle_options
    show_secret_option
  end

  def show_single_options
    puts "-b  'BARS'           | -d  'DOTS'"
    puts join_half_rules(render_bars, render_dots)
  end

  def show_double_options
    puts "-b  'DOUBLE BARS'    | -d  'DOUBLE DOTS'"
    2.times { puts join_half_rules(render_bars, render_dots) }
  end

  def show_squiggle_options
    puts "-sr 'SQUIGGLES-LEFT' | -sl 'SQUIGGLES-RIGHT'"
    puts join_half_rules(render_squiggles_left, render_squiggles_right)
  end

  def show_secret_option
    puts align_to_ruler_center("-ss 'SUPER-SECRET'")
  end

end
