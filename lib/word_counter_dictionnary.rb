def dictionnary
  ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
end

# \W supprime tous les caractères hors lettres ; + combine plusieurs délimiteurs (supprime les espaces)
#   print words.split(/\W+/)
# Attention, supprime également les accents, les chiffres...
def only_one(string, word)
  key = word
  value = string.downcase.scan(word).length
  if value > 0
  return hash = {key => value}
  end
end

def word_counter(string, dictionnary)
  list_of_words = Hash.new
  for word_in_dictionnary in 0..(dictionnary.length-1)
    puts each_word = (only_one(string, dictionnary[word_in_dictionnary]))
    # puts list_of_words.merge(each_word)
  end
end