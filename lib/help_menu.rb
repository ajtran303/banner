require "./lib/horizontal_ruler"

class HelpMenu
  include HorizontalRuler

  def initialize
    show_help_banner
    show_help_section
    show_link_to_source
  end

  def show_help_banner
    puts render_squiggles_right
    puts "Utility to pretty-print banner messages."
  end

  def show_help_section
    puts "Find rulers:  $ ruby banner.rb -hr"
    puts "Make banner:  $ ruby banner.rb -b 'BARS'"
    puts render_bars
  end

  def show_link_to_source
    puts align_to_ruler_center("https://github.com/ajtran303/banner/")
  end
end
