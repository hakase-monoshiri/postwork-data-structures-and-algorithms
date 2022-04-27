def recursive_count(num = 0)
  # type your code in here
  puts num
  num += 1

  return if num >= 10

  recursive_count(num)
end

if __FILE__ == $PROGRAM_NAME
  recursive_count
end

# OPTIONAL
# Please add your pseudocode to this file
# And a written explanation of your solution
