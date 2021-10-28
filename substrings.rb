def substrings(text, dict)
  matches = {}
  dict.each do |word|
    match = text.downcase.scan(word)
    matches[match[0]] = match.length
  end
  matches.delete(nil)
  matches
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
