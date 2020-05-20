class LetterSpacer
  attr_reader :message, :output

  def initialize(message)
    @message = message
    @output = space_it[0...40]
  end

  def split_it
    @message.join.split("")
  end

  def generate_spaces
    split_it.map {|c| " "}
  end

  def zip_it
    split_it.zip(generate_spaces).flatten!
  end

  def string_it
    zip_it.join
  end

  def needed_spaces
    ((40 - string_it.length) / 2)
  end

  def space_it
    s = string_it
    needed_spaces.times { s.prepend(" ") }
    s
  end

end


# puts LetterSpacer.new(["Hello"]).output
