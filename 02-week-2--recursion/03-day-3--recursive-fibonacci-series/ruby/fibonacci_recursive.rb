def fibonacci(n)
  # type your code in here
  if n < 2
    return n
  end

  fibonacci(n-1) + fibonacci(n-2)

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

# get number
# check if number is 1 or 0
#   if it is return number


