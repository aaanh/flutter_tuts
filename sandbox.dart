class Person {
  String name;
  int age;

  // curly braces for optional args, and thus are not positional args
  // define default values for args like python
  // use @required for mandatory args, only usable in flutter

  // Person({ String inputName, int inputAge }) {
  //   name = inputName;
  //   age = inputAge; // this.variable refers to class-level var scope
  // }

  Person({this.name, this.age});
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}

void main() {
  var p1 = Person(name: 'Max', age: 30); // targeting args with name
  var p2 = Person(name: 'Manu', age: 31);
  print(p1.name);
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1, 1);
  print(firstResult + 1);
  print('Hello!');
}
