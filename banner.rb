require "./lib/flag_menu"
require "./lib/help_menu"
require "./lib/horizontal_ruler"
require "./lib/letter_spacer"

class Banner
  include HorizontalRuler

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

  def open_flag_menu
    FlagMenu.new
  end

  def check_for_help_flag
    open_flag_menu if need_flags?
    open_help_menu if need_help?
    exit if need_help? || need_flags?
  end

  def open_help_menu
    HelpMenu.new
  end

  def need_flags?
    ARGV.include?("-hr")
  end

  def need_help?
    ARGV.include?("-help") ||
    ARGV.include?("-h") ||
    ARGV.empty?
  end

  def check_for_valid_flag
    unless @options.keys.include? @flag.downcase
      flag_warning_message
      exit
    end
  end

  def flag_warning_message
    puts "Rule not found. Example input: $ ruby banner.rb -b 'BARS'"
    puts "                Look up rules: $ ruby banner.rb -hr"
  end

  def autorun
    puts @options[@flag.downcase]
    puts align_to_ruler_center(@banner_message)
    puts @options[@flag.downcase]
  end

end

Banner.new
