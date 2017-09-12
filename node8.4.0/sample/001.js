//node 001.js


var x, y, z;
x = 5;
y = 6;
z = x + y;
console.log(z);

var lastname, lastName;
lastName = "Doe";
lastname = "Peterson";
console.log(lastName + " " + lastname);


function myFunction(p1, p2) {
    return p1 * p2;              // The function returns the product of p1 and p2
}
var x = myFunction(4, 3);
console.log(x);


var car = {type:"Fiat", model:"500", color:"white"};
var person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue", fullName:function() {return this.firstName + " " + this.lastName;}};

console.log(person.lastName);
console.log(person.fullName());

