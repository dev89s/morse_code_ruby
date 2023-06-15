def translate_char(char)
  code = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
           '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
           '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
           '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '-----' => '0',
           '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
           '--...' => '7', '---..' => '8', '----.' => '9' }
  code[char]
end

def translate_word(morse_word)
  chars = morse_word.split
  alpha_word = ''
  chars.each do |morse_char|
    alpha_word += translate_char(morse_char)
  end
  alpha_word
end

def translate_sentence(morse_message)
  morse_words = morse_message.split('   ')
  result = ''
  morse_words.each do |morse_word|
    result += translate_word(morse_word)
    result += ' '
  end
  result.strip
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

print translate_sentence(message)
