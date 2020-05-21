require "./lib/horizontal_ruler"

class HorizontalRulerDemo
  include HorizontalRuler

  def initialize
    autorun
  end

  def answer
    puts align_to_ruler_center("A1: To separate content by theme!")
    puts align_to_ruler_center("A2: Yes, I love them!")
  end

  def question
    puts align_to_ruler_center("Q1: What is a horizontal rule used for?")
    puts align_to_ruler_center("Q2: Do you like animals?")
  end

  def autorun
    question
    puts render_dots
    answer
  end

end

HorizontalRulerDemo.new
