function fibonacci(num) {
  let two_prev = 0
  let prev = 1
  let current = 0
  
  switch (num) {

  case 0 :
    return 0
  case 1 :
    return 1
  default:

    for (i = 1; i < num; i++) {
      current = two_prev + prev;
      two_prev = prev;
      prev = current;
    }

    return current 
  }

}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 0");
  console.log("=>", fibonacci(0));

  console.log("");

  console.log("Expecting: 1");
  console.log("=>", fibonacci(2));

  console.log("");

  console.log("Expecting: 55");
  console.log("=>", fibonacci(10));
}

module.exports = fibonacci;

// Please add your pseudocode to this file
// And a written explanation of your solution
