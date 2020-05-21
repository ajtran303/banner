module HorizontalRuler

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

  def duplicate(character, number_of_times)
    output = ""
    number_of_times.times { output += character}
    output
  end

  def double(horizontal_rule)
    horizontal_rule + "\n" + horizontal_rule
  end

  def align_to_ruler_center(message)
    spaces_to_prepend = (40 - message.length) / 2
    spaces_to_prepend.times { message.prepend " "}
    message
  end

  def join_half_rules(left_rule, right_rule)
    "#{half_render(left_rule)}|#{half_render(right_rule)}"
  end

  def half_render(horizontal_rule)
    horizontal_rule[0..20]
  end

end
