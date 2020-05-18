require "./horizontal_ruler"

class HorizontalRulerSample

  include HorizontalRuler

  def initialize
    autorun
  end

  def title
    " H O R I Z O N T A L _ R U L E R . R B"
  end

  def intro
    "A Ruby Module to easily pretty print\n"+
    "horizontal rules to the Command Line."
  end

  def body
    "A horizontal rule is a line that\n"+
    "separates content above and below it.\n"+
    "\n"+
    "Horizontal rules are used to visually\n"+
    "denote thematic breaks and transitions.\n"
  end

  def ending
    "Check out the demo file to see it work!"
  end

  def autorun
    puts render_super_squiggles
    puts title
    puts render_super_squiggles
    puts ""
    puts intro
    puts ""
    puts double_render_dots
    puts ""
    puts body
    puts ""
    puts render_bars
    puts ""
    puts ending
  end

end

HorizontalRulerSample.new
