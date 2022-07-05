function rotateArray(arr, k) {
  // type your code here

  const newArr = [];

  let newIdx = 0
  let shiftValue = k

  if (k > arr.length) {
    shiftValue = k % arr.length
  }
  
  for (  let idx = 0; idx < arr.length; idx++) {
    if (idx + shiftValue < arr.length) {
      newIdx = idx + shiftValue
    }
    else {
      newIdx = shiftValue + idx - arr.length
    }
    
    newArr[newIdx] = arr[idx]
  }

  return newArr;
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: [4, 1, 2, 3]");
  console.log("=>", rotateArray([1, 2, 3, 4], 1));

  console.log("");

  console.log("Expecting: [2, 3, 1]");
  console.log("=>", rotateArray([1, 2, 3], 2));

  console.log("");

  console.log("Expecting: [1, 2, 3]");
  console.log("=>", rotateArray([1, 2, 3], 3));
}

module.exports = rotateArray;

// Please add your pseudocode to this file
// And a written explanation of your solution
