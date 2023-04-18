# Pour avoir le plus gros bénéfice, il faut avoir le couple de valeurs avec la plus grande différence, sachant que :
# le plus petit des deux nombres doit se situer en amont du deuxième dans le tableau.

# Donc théoriquement, il faudrait tester pour chaque entrée du tableau la soustraction
# de toutes les valeurs situées à sa droite par elle et stocker la différence la plus grande
# tout en conservant les index des deux valeurs concernées par l'opération.

# On peut imaginer une méthode qui permet de faire une boucle pour chercher la soustraction par rapport aux autres "cases" du tableau à droite,
# puis on ferait une deuxième méthode pour faire ça sur chacune des entrées.

def day_trader(array_of_value)
day_for_sell = 0
day_for_buy = 0
max_profit = 0
for first_index in 0..(array_of_value.length - 1)
  for second_index in (first_index + 1)..(array_of_value.length - 1)
    if array_of_value[second_index] - array_of_value[first_index] > max_profit
     max_profit = array_of_value[second_index] - array_of_value[first_index]
     day_for_sell = second_index
     day_for_buy = first_index
    end
  end
  end
  return best_deal = [day_for_buy,day_for_sell]
end