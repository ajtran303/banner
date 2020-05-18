module HorizontalRuler

  def double(render_rule)
    render_rule + "\n" + render_rule
  end

  def render_bars
    hr = ""
    40.times { hr += "=" }
    hr
  end

  def render_dots
    hr = ""
    40.times { hr += ":" }
    hr
  end

  def render_squiggles_left
    hr = ""
    10.times { hr += "~*~ "}
    hr
  end

  def render_squiggles_right
    hr = ""
    10.times { hr += " ~*~"}
    hr
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


end
