// Exercise 1

var cat = { sound: "meow!", legs: 4 };

console.log(cat.sound); // meow!
console.log(cat.legs); // 4

var dog = { sound: "woof!", legs: 4 };

console.log(dog.sound); // woof!
console.log(dog.legs); // 4

dog.sound = "bork!";

console.log(dog.sound); // bork!


// Exercise 2

var sayHello = function() {
  return "Hello!";
};

sayHello(); // Hello!

var sayHi = function() {
  return "Hi!";
};

sayHi(); // Hi!


// Exercise 3

var sayHello = function(name) {
  return "Hello " + name + "!";
};

sayHello("Fred"); // Hello Fred!


// Exercise 4

var sayMeow = function() {
  return "Meow!";
};

sayMeow(); // Meow!

var cat = { legs: 4 };

cat.speak = sayMeow;

cat.speak(); // Meow!


// Exercise 5

var cat = {
  speak: function() {
    return "Meow!";
  }
};

cat.speak(); // Meow!


// Exercise 6

var cat = {
  speak: function() {
    return "I have " + this.legs + " legs! Meow!";
  },
  legs: 4
};

cat.speak(); // I have 4 legs! Meow!
cat.legs = 5;
cat.speak(); // I have 5 legs! Meow!


// Exercise 7

var myCatSpeak = function() {
  return "I have " + this.legs + " legs! Meow!";
};

var cat = {
  legs: 4
};

cat.speak = myCatSpeak;

cat.speak(); // I have 4 legs! Meow!


// Exercise 8

var Cat = function(legs) {
  this.legs = legs;
};

Cat.prototype.speak = function() {
  return "I have " + this.legs + " legs! Meow!";
};

var cat = new Cat(4);
cat.speak(); // I have 4 legs! Meow!

var otherCat = new Cat(5);
otherCat.speak(); // I have 5 legs! Meow!

otherCat.legs = 6;
otherCat.speak(); // I have 6 legs! Meow!


// Exercise 9

function Cat(legs) {
  this.legs = legs;
}

Cat.prototype.speak = function() {
  return "I have " + this.legs + "legs! Meow!";
};

var cat = new Cat(4);
cat.speak(); // I have 4legs! Meow!