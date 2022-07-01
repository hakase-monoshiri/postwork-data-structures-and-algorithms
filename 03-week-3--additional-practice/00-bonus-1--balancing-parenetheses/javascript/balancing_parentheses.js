function balancingParentheses(string) {
  // type your code here
  chars = string.split('');

  openPars = 0
  missingPairs = 0

  for (let i = 0; i < string.length; ++i ) {

   const char = string[i];

    if ( char === '(' ) {
      ++openPars;
      continue;
    }

    if ( openPars > 0 ) {
      --openPars;
    }
    else {
      ++missingPairs;
    }
  };

  return openPars + missingPairs;

}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 0");
  console.log(balancingParentheses('(()())'));

  console.log("");

  console.log("Expecting: 2");
  console.log(balancingParentheses('()))'));

  console.log("");

  console.log("Expecting: 1");
  console.log(balancingParentheses(')'));
}

module.exports = balancingParentheses;

// Please add your pseudocode to this file
// And a written explanation of your solution
