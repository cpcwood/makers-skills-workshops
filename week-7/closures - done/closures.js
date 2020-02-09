// https://hackmd.io/cIFsMAqISHqVHN_-p9hY0Q

// Example 1

function makeCounter() {
  var n = 0;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = makeCounter();  // closure returns function and assigns it to var counter, scope of function is still makeCounter so n persists
console.log(makeCounter()) // returns function
console.log(counter()) // 1
console.log(counter()) // 2
console.log(counter()) // 3


// Example 2

function counter(firstN) {
  var n = firstN;
  return function() {
    n = n + 1;
    return n;
  }
}

var counter = counter(5); // Similar to the above however the var n in returned functions scope is set initially to 5 and will persist
console.log(counter()) // 6
console.log(counter()) // 7
console.log(counter()) // 8


// Example 3

function SecretDiary() {
  var locked = true,
      contents = "Hey!";
  
  function unlock() {
    locked = false;
  }
  
  function lock() {
    locked = true;
  }
  
  function read() {
    if (locked) { return "Nope!"; }
    return contents;
  }
  
  function write(message) {
    if (locked) { return "Nope!"; }
    contents = message;
  }
            
  return {
    unlock: unlock,
    lock: lock,
    read: read,
    write: write
  };
}

var secretDiary = SecretDiary(); // add functions to secretDiary
console.log(secretDiary.read()); // returns error code
secretDiary.unlock();            // changes variable local to the .read functions scope  
console.log(secretDiary.read()); // returns value of content