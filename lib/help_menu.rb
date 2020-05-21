require "./lib/horizontal_ruler"

class HelpMenu
  include HorizontalRuler

  def initialize
    show_help_banner
    show_help_section
  end

  def show_help_banner
    puts render_squiggles_right
    puts "Utility to pretty-print banner messages."
    puts render_bars
  end

  def show_help_section
    puts "Make banner:  $ ruby banner.rb -b 'BARS'"
  end

end
