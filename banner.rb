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

  def need_help?
    ARGV.include?("-h") ||
    ARGV.include?("-help")
  end

  def check_for_valid_flag
    unless @options.keys.include? @flag
      flag_warning_message
      exit
    end
  end

  def flag_warning_message
    puts "Horizonal rule not found. See the rules any time:"
    puts "$ ruby banner.rb -help"
  end

  def open_help_menu
    puts render_squiggles_right
    puts "Utility to pretty-print banner messages."
    puts render_squiggles_right
    puts
    help_section
    flag_options
    credits
  end

  def help_section
    puts "$ ruby banner.rb -h/-help"
    puts
    puts "> Display this help menu and exit"
    puts "> Use a flag to set horizontal rule"
    puts "> Use single-quotes to wrap input"
    puts
  end

  def flag_options
    bar_options
    dot_options
    squiggle_options
  end

  def bar_options
    puts "$ ruby banner.rb -b 'BARS'"
    puts render_bars
    puts
    puts "$ ruby banner.rb -db 'DOUBLE BARS'"

    puts double_render_bars
    puts
  end

  def dot_options
    puts "$ ruby banner.rb -d 'DOTS'"
    puts render_dots
    puts
    puts "$ ruby banner.rb -dd 'DOUBLE DOTS'"

    puts double_render_dots
    puts
  end

  def squiggle_options
    puts "$ ruby banner.rb -sr 'SQUIGGLES-RIGHT'"
    puts render_squiggles_right
    puts

    puts "$ ruby banner.rb -sl 'SQUIGGLES-LEFT'"
    puts render_squiggles_left
    puts

    puts "$ ruby banner.rb -ss 'SUPER-SQUIGGLES'"
    puts render_super_squiggles
    puts
  end

  def credits
    puts "Found a bug? Let me know!"
    puts "https://github.com/ajtran303/banner/issues"
    puts
  end

  def autorun
    puts @options[@flag.downcase]
    puts @banner_message
    puts @options[@flag.downcase]
  end

end

Banner.new
