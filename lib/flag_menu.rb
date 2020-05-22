require_relative "./horizontal_ruler"

class FlagMenu
  include HorizontalRuler

  def initialize
    show_flag_options
  end

  def show_flag_options
    show_name
    show_examples
    show_double_options
    show_squiggle_options
    show_single_options
  end

  def show_name
    puts align_to_ruler_center("    H O R I Z O N T A L  R U L E - S S")
  end

  def show_single_options
    puts "-b  'BARS'           | -d  'DOTS'"
  end

  def show_double_options
    puts "-db 'DOUBLE BARS'    | -dd 'DOUBLE DOTS'"
  end

  def show_squiggle_options
    puts "-sr 'SQUIGGLES-LEFT' | -sl 'SQUIGGLES-RIGHT'"
  end

  def show_examples
    2.times { puts join_half_rules(render_bars, render_dots) }
    puts join_half_rules(render_squiggles_left, render_squiggles_right)
    puts join_half_rules(render_bars, render_dots)
  end


end
