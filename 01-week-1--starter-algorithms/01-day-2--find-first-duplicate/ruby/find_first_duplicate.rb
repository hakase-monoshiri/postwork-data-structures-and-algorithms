def find_first_duplicate(arr)
  # type your code in here
  check_arr = []
  arr.each do |item|
    if !check_arr.include?(item)
      check_arr << item
    else
      return item
    end

  end

  return -1
  
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# go through array
# keep track of previous values
# as soon an item is the same as a previous value, return it
# if there is not saved value when i get to then end, return -1 