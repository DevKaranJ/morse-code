
$morse_code = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---',
    'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
    'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--',
    'Z' => '--..',
    '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....',
    '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----',
    '.' => '.-.-.-', ',' => '--..--', '?' => '..--..'
  }

def decode_char (parameter)
  $morse_code.each do |key, value|
    if value == parameter
        puts(key)
    end
    
  end
end

def morse_word_to_eng(word)
  chars = word.split(' ')
  newWord = ''
  chars.each do |char|
    newWord += decode_char(char)
  end
  return newWord
end

def morse_sentence_to_eng(sentence)
  words_arr = sentence.split('   ')
  newSentence = ''
  words_arr.each do |word|
    newSentence += morse_word_to_eng(word)
    newSentence += ' '
  end
  return newSentence
end
puts morse_sentence_to_eng(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")



