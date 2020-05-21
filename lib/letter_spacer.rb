class LetterSpacer
  attr_reader :output

  def initialize(message)
    @message = message
    @output = generate_spaced_message[0...40]
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

  def generate_spaced_message
    merge_characters_and_spaces.join
  end

end
