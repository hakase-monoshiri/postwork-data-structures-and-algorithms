def rotate_array(arr, k)
  # type your code in here

  shift_value = 0
   
  new_arry = []
  i = 0

  if k > arr.length && arr.length > 0
    shift_value = k%arr.length
  else
    shift_value = k
  end

  while i < arr.length

    if i + shift_value < arr.length
    new_idx = i + shift_value
    else
    new_idx = (i + shift_value) - arr.length
    end

    new_arry[new_idx] = arr[i]
    i += 1
  end

  return new_arry
  

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [4, 1, 2, 3]"
  print "=> "
  print rotate_array([1, 2, 3, 4], 1)

  puts

  puts "Expecting: [2, 3, 1]"
  print "=> "
  print rotate_array([1, 2, 3], 2)

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print rotate_array([1, 2, 3], 3)
  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# every element in the array has a current index
# it also has a new index
# if the current index plus the amount to shift is less than
#   the array length, that is the nee index
#   if at amount is bigger than the length, then
#     the new index is the difference

