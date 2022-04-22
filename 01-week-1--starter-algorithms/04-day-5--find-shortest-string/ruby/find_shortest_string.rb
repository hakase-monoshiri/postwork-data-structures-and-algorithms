def find_shortest_string(arr)
  # type your code in here
  arr.min{|a,b| a.length <=> b.length}

end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  start_time = Time.now

  1000.times do
    find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])
  end

  avg_time = (Time.now - start_time) / 1000.0
  puts avg_time
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# given an array
# look at each item in the array
# compare length 


