dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  words = words.downcase.split()
  hash = Hash.new(0)
  dictionary.each do |dict_word|
    words.each do |word|
      if word.include?(dict_word)
        hash[dict_word] += 1
      end
    end
  end
  hash
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
