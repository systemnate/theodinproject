def caesar_cipher(string, shift)
  lower_alpha = ("a".."z").to_a
  upper_alpha = ("A".."Z").to_a
  mapping = lower_alpha.zip(lower_alpha.rotate(shift))
  mapping += upper_alpha.zip(upper_alpha.rotate(shift))
  mapping = mapping.to_h
  puts string.chars.map { |letter| mapping[letter] || letter }.join
end

caesar_cipher("What a string!", 5)
