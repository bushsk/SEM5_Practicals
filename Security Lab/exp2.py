def substitution(text,key):
  result = ""
  for i in range (len(text)):
    char = text[i]
    if (char.isupper()):
      result += chr((ord(char) + key-65) % 26 + 65)
    elif (char.islower()):
      result += chr((ord(char) + key - 97) % 26 + 97)
    else:
      result += "*" 
  return result
def encryptMessage(key, message):
   ciphertext = [''] * key
   
   for col in range(key):
      position = col
      while position < len(message):
         ciphertext[col] += message[position]
         position += key
   return ''.join(ciphertext) 

text = input("Enter a string to be encrypted: ")
key = int(input("Enter Substitution cipher key: "))
print ("Encrypted text:",substitution(text,key))
sub = substitution(text,key)
key = int(input("Enter Transposition key: "))
product = encryptMessage(key,sub)
print("Product cipher:", product)

