$alphabets = {
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "..--" => "Z"
}

def decode_char (character) 
  return $alphabets[character]
end

def decode_word (word)
  decoder = ''
  character = word.split()
  character.each {|c| decoder += decode_char(c)}
  return decoder
end

def decode_message (message)
  decoderMessage = ''
  words = message.split(/   /)
  words.each {|c| decoderMessage += decode_word(c)+" "}
  return decoderMessage
end

decode_message ("  .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
# output
# "A BOX FULL OF RUBIES "