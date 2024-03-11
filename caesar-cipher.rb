require 'pry-byebug'

def caesar_cipher(input_string, shift_number)

  # To check if shift_number is an integer
  if shift_number.is_a? Integer
  else
    puts "Shift number must be an integer!"
    exit
  end

  # Create array of letters in alphabets
  the_alphabet = Array.new
  array_index_internal = 0
  for array_index in 'a'..'z'
    the_alphabet[array_index_internal] = array_index
    array_index_internal += 1
  end 

  process_string = input_string.split("")

end

caesar_cipher("sample text",-4)