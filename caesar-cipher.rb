# frozen_string_literal: true

require 'pry'
require 'pry-byebug'

def caesar_cipher(input_string, shift_number)
  # To check if shift_number is an integer
  unless shift_number.is_a? Integer
    puts 'Shift number must be an integer!'
    exit
  end

  # Create array of letters in alphabets
  the_alphabet = []
  first_loop_counter = 0
  ('a'..'z').each do |first_array_index|
    the_alphabet[first_loop_counter] = first_array_index
    first_loop_counter += 1
  end

  # Encryption code block
  process_string = input_string.split('')
  transformed_string = []
  second_loop_counter = 0
  process_string.each do |process_string_element|
    if the_alphabet.include?(process_string_element.downcase)
      initial_index = the_alphabet.index(process_string_element.downcase)
      shifted_index = (shift_number + initial_index) % 26

      transformed_string[second_loop_counter] = if the_alphabet[initial_index] == process_string_element
                                                  the_alphabet[shifted_index]
                                                else
                                                  the_alphabet[shifted_index].upcase
                                                end
    else
      transformed_string[second_loop_counter] = process_string_element
    end
    second_loop_counter += 1
  end
  puts transformed_string.join('')
end

caesar_cipher('What a string!', 5)
