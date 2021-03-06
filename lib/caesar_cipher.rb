def caesar_cipher(text, shift)
  text.each_char.map do |letter|
    if letter.match(/[a-zA-Z]/)
      is_upper = letter == letter.upcase
      letter = (((letter.downcase.ord - 97) + shift) % 26) + 97
      letter = is_upper ? letter.chr.upcase : letter.chr
    end
    letter
  end.join('')
end
