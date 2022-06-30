def selection_sort_recursive(arr)
  # type your code in here

  # check to see if array is empty, if so return empty array
  if arr.empty?
    return []
  end
  # find the minimum value in arr and remove it from the array
  min = arr.min
  index_to_remove = arr.index_of(min)
  arr.delete_at(index_to_remove)
  
  # keep track of previous results. Everytime it recurses it will find an remove the smallest value, and add it to the front
 
  results = selection_sort_recursive(arr)

  # slip the smallest value to the front of the array
   # since recursion operates using a stack, the smallest min will be added last

  result.unshift(min)
  
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort_recursive([3, -1, 5, 2])

  puts

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
