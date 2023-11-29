MORSE_CODE = {
  'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
  'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---',
  'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---',
  'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
  'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--',
  'Z' => '--..',
  '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....',
  '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----',
  '.' => '.-.-.-', ',' => '--..--', '?' => '..--..'
}.freeze

def decode_char(parameter)
  MORSE_CODE.each do |key, value|
    puts(key) if value == parameter
  end
end

def morse_word_to_eng(word)
  chars = word.split
  new_word = ''
  chars.each do |char|
    new_word += decode_char(char)
  end
  new_word
end

def morse_sentence_to_eng(sentence)
  words_arr = sentence.split('   ')
  new_sentence = ''
  words_arr.each do |word|
    new_sentence += morse_word_to_eng(word)
    new_sentence += ' '
  end
  new_sentence
end

puts morse_sentence_to_eng('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
