class Cryptographer

  def encrypt_1(message)
    #find position of character
    #shift the position by 13
    #find the character at the new position
    char = message[0]
    pos = position(char)
    new_pos = rot(pos)
    new_char = character(new_pos)
    new_char
  end

  def encrypt_mult(message)
    encrypt_chars = message.chars.map do |char|
      encrypt_1(char)
    end
      encrypt_chars.join
  end

  def alphabet
    ("a".."z").to_a
  end

  def position(character)
    alphabet.index(character)
  end

  def character(position)
    alphabet[position]
  end

  def rot(position)
    position + 13
  end

end
