require 'pry'
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
  first_loop_counter = 0
  for first_array_index in 'a'..'z'
    the_alphabet[first_loop_counter] = first_array_index
    first_loop_counter += 1
  end 

  # Encryption code block
  process_string = input_string.split("")
  transformed_string = Array.new
  second_loop_counter = 0
  process_string.each do |process_string_element|
    if the_alphabet.include?(process_string_element.downcase)
      initial_index = the_alphabet.index(process_string_element.downcase)
      shifted_index = (shift_number + initial_index) % 26
    
      if the_alphabet[initial_index] == process_string_element
        transformed_string[second_loop_counter] = the_alphabet[shifted_index]
        second_loop_counter += 1
      else
        transformed_string[second_loop_counter] = the_alphabet[shifted_index].upcase
        second_loop_counter += 1
      end
    else
      transformed_string[second_loop_counter] = process_string_element
      second_loop_counter += 1
    end
  end
  puts transformed_string.join("")
end

caesar_cipher("SAMPLE text123231231245***%$@$",-500)