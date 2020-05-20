class LetterSpacer
  attr_reader :output

  def initialize(message)
    @message = message
    @output = get_spaced_message[0...40]
  end

  private

  def generate_message_as_characters
    @message.join.split("")
  end

  def generate_spaces_equal_to_characters
    generate_message_as_characters.map {|c| " "}
  end

  def merge_characters_and_spaces
    generate_message_as_characters.zip(generate_spaces_equal_to_characters).flatten!
  end

  def generate_message_as_string
    merge_characters_and_spaces.join
  end

  def generate_spaces_to_prepend
    ((40 - generate_message_as_string.length) / 2)
  end

  def get_spaced_message
    new_message = generate_message_as_string
    generate_spaces_to_prepend.times { new_message.prepend(" ") }
    new_message
  end

end
