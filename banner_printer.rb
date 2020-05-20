require "./lib/horizontal_ruler"
require "./lib/letter_spacer"

class BannerPrinter < HorizontalRuler

  def initialize
    @flag, *@message = ARGV
    @banner_message = LetterSpacer.new(@message).output

    @options = { "-b" => render_bars,
      "-db" => double_render_bars,
      "-d" => render_dots,
      "-dd" => double_render_dots,
      "-sl" => render_squiggles_left,
      "-sr" => render_squiggles_right,
      "-ss" => render_super_squiggles
    }

    autorun
  end

  def autorun
    puts @options[@flag]
    puts @banner_message
    puts @options[@flag]
  end

end

BannerPrinter.new
