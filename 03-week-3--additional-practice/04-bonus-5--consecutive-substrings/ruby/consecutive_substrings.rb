def consecutive_substrings(string)
  # type your code in here
  memo = []

  string.chars.each do |char|
    memo << char

    other_chars = string.chars[(string.index(char) + 1) ..-1]

    fragment = char

    other_chars.each do |next_char|
    
      fragment += next_char
      memo << fragment
    end

  end


  memo
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']"
  print "=> " 
  print consecutive_substrings('abc')

  puts

  puts "Expecting: ['a']"
  print "=> " 
  print consecutive_substrings('a')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

