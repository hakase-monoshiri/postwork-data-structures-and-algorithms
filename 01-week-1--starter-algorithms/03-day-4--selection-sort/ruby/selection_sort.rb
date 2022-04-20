def selection_sort(arr)
  # type your code in here
  new_arr = []
  
  until arr.length == 0
   x = arr.min
   new_arr << x
   arr.delete_at(arr.index(x))
  end

  return new_arr

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# find smallest number in array
# remove from og array
# add to new array
# return new array