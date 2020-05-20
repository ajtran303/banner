require "./lib/help_menu"
require "./lib/horizontal_ruler"
require "./lib/letter_spacer"

class Banner < HorizontalRuler

  def initialize
    @options = { "-b" => render_bars,
      "-db" => double_render_bars,
      "-d" => render_dots,
      "-dd" => double_render_dots,
      "-sl" => render_squiggles_left,
      "-sr" => render_squiggles_right,
      "-ss" => render_super_squiggles,
    }
    @flag, *@message = ARGV
    check_for_help_flag
    check_for_valid_flag
    @banner_message = LetterSpacer.new(@message).output
    autorun
  end

  def check_for_help_flag
    open_help_menu if need_help?
    exit if need_help?
  end

  def open_help_menu
    HelpMenu.new
  end

  def need_help?
    ARGV.include?("-h") ||
    ARGV.include?("-help")
  end

  def check_for_valid_flag
    unless @options.keys.include? @flag.downcase
      flag_warning_message
      exit
    end
  end

  def flag_warning_message
    puts "Horizonal rule not found."
    puts "Need help? Try:"
    puts "$ ruby banner.rb -help"
  end

  def autorun
    puts @options[@flag.downcase]
    puts @banner_message
    puts @options[@flag.downcase]
  end

end

Banner.new
