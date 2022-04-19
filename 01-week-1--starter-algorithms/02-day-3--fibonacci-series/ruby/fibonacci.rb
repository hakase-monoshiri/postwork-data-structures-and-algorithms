def fibonacci(num)
  # type your code in here
  2_prev = 0
  prev = 1
  current = 0
  
  case num
    when 0
      return 0
    when 1
      return 1
    else
      while i < num
        current = 2_prev + prev
        2prev = prev
        prev = current
        i++
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

puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(8)