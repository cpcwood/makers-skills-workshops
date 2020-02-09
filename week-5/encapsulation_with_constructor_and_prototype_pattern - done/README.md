# Encapsulation with the constructor and prototype pattern

## Instructions

At a high level, this week is about building the skills that let you learn a new language and its patterns.  In this workshop, you'll practice getting visibility to understand a pattern: encapsulating code with constructors and prototypes.  And you'll practice using this pattern to encapsulate code.

You'll also write some code that uses this pattern to encapsulate behaviour.

### Learning objectives

1. Describe what a constructor function does.  Describe what a constructor function's prototype does.
2. Write a constructor function and prototype to encapsulate some behaviour.
3. Explain the strengths and weaknesses of the constructor and prototype pattern as a way to encapsulate behaviour.

### Getting visibility

A great way to understand code is to get visibility.  One technique for this is to `p` everywhere.   In JavaScript, the equivalent of `p` is `console.log()`. As you go through the workshop, use `console.log()` to see the values of:

* Variables
* Parameters
* Function return values

### Encapsulation

Encapsulation consists of two things:

* Grouping behaviour with the data (state) it operates on.
* Hiding the details of data and implementation from other units.

### Investigate the CountModel code sample (30 mins)

* Pair up.

* Clone this repo.

* Open the `index.html` file in your web browser.

* Open the browser console.

* You should see `hello!`.

* Open `index.js` in your text editor.

* Paste the code for question 1 (below) into `index.js`.

* Play around with the code using the techniques for getting visibility. Answer the questions that are in comments.  Use the resources listed at the bottom to help you.

* Discuss your answers with your pair partner.

* Swap driver and navigator.  Continue with the next question.

### Encapsulate some behaviour with the constructor and prototype pattern (25 mins)

Use the constructor and prototype pattern to implement the user stories (below).  You can draw on the OO skills you learnt in the first four weeks of the course.  Don't be afraid to diagram! Strive for good encapsulation.

### Plenary (20 mins)

We'll come back together for a short plenary.  We'll show our code and discuss it.  We'll discuss the strengths and weaknesses of the constructor and prototype pattern for encapsulating behaviour.

## Questions

### Question 1

```js
// How does the printed output of the program change if you rename
// CountModel to countmodel (everywhere it appears)?

function CountModel() {
  this._count = 0;
};

CountModel.prototype.count = function() {
  return this._count;
};

CountModel.prototype.set = function(count) {
  this._count = count;
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());

// Since renaming the CountModel to countModel doesn't affect the inital set up of the consturctor code, nothing changes initially, but when the variable countModel is assigned to a new instance of the countModel constructor, it overwrites the constructor function assigned to countModel removing its ability to create new instances as it is an instance itself.
```

### Question 2

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype.count = function() {
  return this._count;
};

// How does the printed output of the program change if you rename
// `set` to `_set` (and change `countModel.set(5)` below to
// `countModel._set(5)`)?
CountModel.prototype._set = function(count) {
  this._count = count;
};

var countModel = new CountModel();
countModel._set(5);
console.log("count is", countModel.count());

// Changing set to _set changes nothing in the functionaility of the function since the underscore is only a naming convention.
```

### Question 3

```js
function CountModel() {
  this._count = 0;

  // How does the printed output of the program change if you
  // uncomment the line below? Why does this happen?
  
  // return {};
  return this;
};

CountModel.prototype.count = function() {
  return this._count;
};

CountModel.prototype.set = function(count) {
  this._count = count;
}

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());

// When the 'return {}' is placed at the end of the constructor function, it makes it construct simply a empty object instead of itself. For the functionailty to remain, it would have to return itself using the keyword 'this'
```

### Question 4

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype.count = function() {
  return this._count;
};

CountModel.prototype.set = function(count) {
  this._count = count;
};

var countModel = new CountModel();

// How does the printed output of the program change if you add this
// code? Why?

countModel.set = function() {
  return "hello";
};

countModel.set(5);

console.log("count is", countModel.count());

// Adding an assignment to the countModel.set method changes what function set performs, to simply return 'hello', since nothing is printed out to the console no result is seen when the set method is called, however the function does not change the count model _count property to the value passed in the set method.
```

### Question 5

```js
function CountModel() {
  this._count = 0;
};

CountModel.prototype.count = function() {
  return this._count;
};

CountModel.prototype.set = function(count) {
  this._count = count;
};

var countModel = new CountModel();
countModel.set(5);
console.log("count is", countModel.count());

// Bonus research project. Can you find the property name below that
// makes the statement print out `true`?
// console.log(countModel["REPLACE_ME"] === CountModel.prototype);

console.log(countModel.__proto__ === CountModel.prototype);
// => true

// the __proto__ property references the constructors prototype methods, similar to call passing in to super in ruby. Every object has a prototype method, however they start with only standard functions to begin. Modifiying a prototype for a constructor, will change the prototype method for all its instances.

```

## User Stories

```
As a shepherd
So my sheep can be safe
I want to have a pen they can go into
```

```
As a shepherd
So my sheep can be friends
I want them to be able to say their names
```

```
As a shepherd
So I can know all my sheep are home
I want to get a list of all the names of the sheep in the pen
```

## Resources

- More examples of the constructor and prototype pattern in the [Count project repo](https://github.com/maryrosecook/count)
- [JavaScript constructors, prototypes and the new keyword](https://blog.pivotal.io/labs/labs/javascript-constructors-prototypes-and-the-new-keyword) (Pivotal blog)
