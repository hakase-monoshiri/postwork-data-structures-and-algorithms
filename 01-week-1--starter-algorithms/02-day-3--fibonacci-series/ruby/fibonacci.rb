def fibonacci(num)
  # type your code in here
  two_prev = 0
  prev = 1
  current = 0
  
  case num

  when 0
    return 0
  when 1
    return 1
  else

    i = 1
    while i < num
      current = two_prev + prev
      two_prev = prev
      prev = current
      i+=1
    end

    return current
  end

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution


# get a number
#zero step is zero
# first step is 1
# everyt step after is previous steps added
