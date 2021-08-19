txt = input("Enter your plain text:")
key = int(input("Enter shift key:"))

def encrypt_txt(txt,k):
    ans = "";

    for i in range(len(txt)):
        ch = txt[i]
        if(ch == " "):
            ans = ans + ch
        elif(ch.isupper()):
            new = (ord(ch)+k - 65)%26 + 65
            ans = ans + chr(new)
        else:
            new = (ord(ch)+k - 97)%26 + 97
            ans = ans + chr(new)

    return ans

def decrypt_txt(txt,k):
    ans = "";

    for i in range(len(txt)):
        ch = txt[i]
        if(ch == " "):
            ans = ans + ch
        elif(ch.isupper()):
            new = (ord(ch)-k - 65)%26 + 65
            ans = ans + chr(new)
        else:
            new = (ord(ch)-k - 97)%26 + 97
            ans = ans + chr(new)
    return ans

def frequencyAnalysis(entxt):
    freq = {}
    for i in entxt:
        if(i in freq):
            freq[i] += 1  #More than one
        else:
            freq[i] = 1   #First Occurance

    for i in freq:
        freq[i] = (freq[i]*100) / len(entxt)

    print(freq)
        
    

print("Plain Text :"+txt)
print("Shift Key :"+ str(key))
en = encrypt_txt(txt,key)
print("Encryted Text :"+en)
print("Decryted Text :"+decrypt_txt(en,key))
frequencyAnalysis(txt)
