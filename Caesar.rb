def caesar_chiper(text, key)
  caesar=""
  key = key%26
  text.each_char do |char|
    aux = char.ord < 91 ? 65 : 97
    if (char.ord.between?(65,90)) || (char.ord.between?(97,122))
      caesar+= ((((char.ord - aux) + key) % 26) + aux).chr
    else
      caesar+= char
    end
  end
  p caesar
end

caesar_chiper("Santiago es un dios, dios",2)
