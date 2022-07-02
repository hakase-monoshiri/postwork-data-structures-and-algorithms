def roman_numeral(string)
  # type your code in here
  running_total = 0
  prev_numeral_value = 0

  idx = 0

  while idx < string.length

    value = 0
    numeral = string[idx]

    case numeral
    when 'I'
      value = 1
    when 'V'
      value = 5
    when 'X'
      value = 10
    when 'L'
      value = 50
    when 'C'
      value = 100
    when 'D'
      value = 500
    when 'M'
      value = 1000
    end

    running_total += value

    if prev_numeral_value < value
      running_total -= (prev_numeral_value * 2)
    end

    idx += 1
    prev_numeral_value = value
  end
    

  return running_total
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 1"
  puts roman_numeral('I')

  puts

  puts "Expecting: 9"
  puts roman_numeral('IX')

  puts

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
