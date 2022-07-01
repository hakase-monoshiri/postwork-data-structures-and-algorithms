def balancing_parentheses(string)

  open_par_count = 0
  unmatched_par_count = 0

  string.chars.each do |char|
    if char == '(' 
      open_par_count += 1
      next
    end

    if open_par_count > 0
      open_par_count -= 1
    else
      unmatched_par_count += 1
    end

  end

  open_par_count + unmatched_par_count
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts balancing_parentheses('((c)())')

  puts

  puts "Expecting: 2"
  puts balancing_parentheses('()))')

  puts

  puts "Expecting: 1"
  puts balancing_parentheses(')')

  # Don't forget to add your own!

  puts 'Expecting 3'
  puts balancing_parentheses('((((())))))))')
end

# Please add your pseudocode to this file
# And a written explanation of your solution
