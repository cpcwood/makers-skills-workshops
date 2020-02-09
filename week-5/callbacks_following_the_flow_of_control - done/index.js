console.log('hello!')

// $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
//    $("#person").html(peopleResponse[0].name);
// });

// console.log(1)
// $(document).click(function(clickEvent) {
//    console.log(3)
//    console.log("The click event:", clickEvent);
//  });
//  console.log(2)

// console.log(1)
// $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
//    console.log(3)
//    console.log("People response:", peopleResponse);
// });
// console.log(2)

// console.log(1)
// var getReturnValue = $.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
//   console.log(3)
//   return peopleResponse;
// });
// console.log(2)
// console.log(getReturnValue)

console.log(1)
$.get("https://async-workshops-api.herokuapp.com/people", function(peopleResponse) {
  console.log(3)
  peopleResponse.forEach(function(person) {
    console.log(4)
    console.log(person.name);
  });
  console.log(5)
});
console.log(2)