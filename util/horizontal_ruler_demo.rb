require "./lib/horizontal_ruler"

class HorizontalRulerDemo
  include HorizontalRuler

  def initialize
    autorun
  end

  def body
    puts align_to_ruler_center("A horizontal rule is a line that")
    puts align_to_ruler_center("separates content above and below it.")
    puts align_to_ruler_center("Horizontal rules are used to indicate")
    puts align_to_ruler_center("breaks and transitions in theme.")
  end

  def intro_banner
    puts align_to_ruler_center(half_render(render_dots))
    puts align_to_ruler_center("horizontal_ruler_demo.rb")
    puts align_to_ruler_center(half_render(render_dots))
  end

  def autorun
    intro_banner
    body
  end

end

HorizontalRulerDemo.new
