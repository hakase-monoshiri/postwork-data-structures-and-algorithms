def reverse_string(str)
  letter_array = str.split("")
  reversed_array = []
  letter_array.each do |letter| 
    reversed_array.unshift(letter)
  end
  reversed_array.join
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# reverse string means each individual item should be in the same order but counting from the back of the string
#instead of the front

# get each item out of the string (split array)
# grab first item (use array index)
# take the next item, and put it in front of the previous item
