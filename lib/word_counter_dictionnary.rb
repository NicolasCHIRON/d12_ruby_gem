def dictionnary
  ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
end


def only_one(string, word)
  return string.split(/\W+/).count(word)  
end

# def word_counter(string, dictionnary)
# hash_with_word_and_occurence = string.split(/\W+/).map{|word|}
#   # for word in 0..(dictionnary.length-1)
#   #   return 

# end

# # Certai 

# words = "Howdy partner, sit down! How's it going?"

# # \W tous les caractères hors lettres ; + combine plusieurs délimiteurs (supprime les espaces)
#   print words.split(/\W+/)

#   # Faire un hash qui pour chacun des mots du dictionnaire regarde le nombre d'occurence
#   # dans le string transformé en tableau

#   only_one