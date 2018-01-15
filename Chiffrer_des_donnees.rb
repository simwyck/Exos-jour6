# Valeur initiale du string
message = "What a string!"
# .chars permet de transformer un string en un array.
message_chars = message.chars
# Initialisation du tableau avec integers du string
caractere_int = []
# Initialisation de la variable qui donne le résultat
resultat = ""
# Initialisation de la valeur du décalage
decalage = 5

message_chars.each { |caractere|
  if (caractere.ord >= "A".ord && caractere.ord <= "Z".ord) || (caractere.ord >= "a".ord && caractere.ord <= "z".ord) # On limite la plage aux majuscules et minuscules. .ord transforme un caractère en nombre ascii.
    if (caractere.ord + decalage > "Z".ord) || (caractere.ord + decalage > "z".ord) # On traite les caractères en dehors de notre plage
      caractere_int << caractere.ord + decalage - 26 # On diminue de 26 (quantité alphabet) pour rester dans la plage
    else # Sinon, on applique le décalage normalement
    caractere_int << caractere.ord + decalage
    end
  else # Si la condition n'est pas respectée, on garde la chaîne initiale
    caractere_int = caractere_int
  end
}

# On retransforme les nombres en caractères . .chr transforme un entier en caractère.
caractere_int.each { |number| resultat << number.chr }

# On affiche le résultat
puts resultat
