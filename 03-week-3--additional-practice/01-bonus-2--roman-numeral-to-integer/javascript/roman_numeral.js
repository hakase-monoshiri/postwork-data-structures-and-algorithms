function romanNumeral(string) {
  // type your code here
  runningTotal = 0
  prevNumeralValue = 0

  for (let idx = 0; idx < string.length; idx ++) {

    value = 0
    numeral = string[idx]

    switch (numeral) {
    case 'I':
      value = 1;
      break;
    case 'V':
      value = 5;
      break;
    case 'X' :
      value = 10;
      break;
    case 'L':
      value = 50;
      break;
    case 'C' :
      value = 100;
      break;
    case 'D' :
      value = 500;
      break;
    case 'M':
      value = 1000;
      break;
    }

    runningTotal += value

    if ( prevNumeralValue < value ){
      runningTotal -= (prevNumeralValue * 2)
    }

    prevNumeralValue = value

  }
    

  return runningTotal
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 1");
  console.log(romanNumeral('I'));

  console.log("");

  console.log("Expecting: 9");
  console.log(romanNumeral('IX'));

  console.log("");

  console.log("Expecting: 402");
  console.log(romanNumeral('CDII'));
}

module.exports = romanNumeral;

// Please add your pseudocode to this file
// And a written explanation of your solution
