class HorizontalRuler

  def render_bars
    duplicate("=", 40)
  end

  def render_dots
    duplicate(":", 40)
  end

  def render_squiggles_left
    duplicate("~*~ ", 10)
  end

  def render_squiggles_right
    duplicate(" ~*~", 10)
  end

  def render_super_squiggles
    render_squiggles_left + "\n" + render_squiggles_right
  end

  def double_render_bars
    double(render_bars)
  end

  def double_render_dots
    double(render_dots)
  end

  private

  def duplicate(character, number_of_times)
    output = ""
    number_of_times.times { output += character}
    output
  end

  def double(render_rule)
    render_rule + "\n" + render_rule
  end

end
