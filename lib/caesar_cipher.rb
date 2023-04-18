# Vérification des valeurs ASCII en fonction des lettres recherchées
  # A => Z / 65 => 90
  # a => z / 97 => 122

# Méthode pour traiter un caractère
def caesar_letter(letter, number)
  final_letter = letter
    if (65..90).include?(letter.ord) == false && (97..122).include?(letter.ord) == false
      final_letter = letter.ord
  elsif (65..90).include?(letter.ord) == true
    if letter.ord + number > 90
      final_letter = (letter.ord + number - 90 + 65 - 1)
    else
      final_letter = (letter.ord + number)
    end
  else (97..122).include?(letter.ord) == true
    if letter.ord + number > 122
      final_letter = (letter.ord + number - 122 + 97 - 1)
    else
      final_letter = (letter.ord + number)
    end
  end
  return final_letter.chr
end

# Boucle qui va séparer chaque caractère du string pour appliquer la méthode caesar_letter puis les remettre dans un string"
def caesar_cipher(string,number)
  unless string.is_a? String
    return "We can't do anything for you..."
  else
    return string.chars.map{|chars| caesar_letter(chars, number)}.join("")
  end
end