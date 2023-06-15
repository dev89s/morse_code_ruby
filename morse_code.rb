def translate_char(char)
  case char
  when ".-"
    return "A"
  when "-..."
    return "B"
  when "-.-."
    return "C"
  when "-.."
    return "D"
  when "."
    return "E"
  when "..-."
    return "F"
  when "--."
    return "G"
  when "...."
    return "H"
  when ".."
    return "I"
  when ".---"
    return "J"
  when "-.-"
    return "K"
  when ".-.."
    return "L"
  when "--"
    return "M"
  when "-."
    return "N"
  when "---"
    return "O"
  when ".--."
    return "P"
  when "--.-"
    return "Q"
  when ".-."
    return "R"
  when "..."
    return "S"
  when "-"
    return "T"
  when "..-"
    return "U"
  when "...-"
    return "V"
  when ".--"
    return "W"
  when "-..-"
    return "X"
  when "-.--"
    return "Y"
  when "--.."
    return "Z"
  when "-----"
    return "0"
  when ".----"
    return "1"
  when "..---"
    return "2"
  when "...--"
    return "3"
  when "....-"
    return "4"
  when "....."
    return "5"
  when "-...."
    return "6"
  when "--..."
    return "7"
  when "---.."
    return "8"
  when "----."
    return "9"
  end
end

def translate_word (morse_word)
  chars = morse_word.split(" ")
  alpha_word = ""
  chars.each {
    |morse_char| alpha_word += translate_char(morse_char)
  }
  return alpha_word
end

def translate_sentence (morse_message)
  morse_words = morse_message.split("   ")
  result = ""
  morse_words.each {
    |morse_word| result += translate_word(morse_word)
    result += " "
  }
  result = result.strip
  return result
end

message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."

print translate_sentence(message)
