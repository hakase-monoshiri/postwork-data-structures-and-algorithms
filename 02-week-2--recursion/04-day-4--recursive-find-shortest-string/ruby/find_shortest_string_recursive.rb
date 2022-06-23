def find_shortest_string_recursive(arr)
  # type your code in here
  if arr.length == 1
    return arr.first
  end
 
  # We are going to narrow our scope of the array with each recursive call
  # Eventually we will get an array with a length of 1, which will return that element
  shortest_so_far = find_shortest_string_recursive(arr[1..-1])

  if shortest_so_far <= arr.first
    return shortest_so_far
  else
    return arr.first
  end

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string_recursive(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string_recursive(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
