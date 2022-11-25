void main() {
  Figure rect = Rectangle(width: 20, height: 30);
  rect.calculateArea();
  Employee bob = Employee(name: "bob", company: "bibol");
  bob.display();
  bob.work();
  Employee1 bnm = Employee1("bnm", "google");
  bnm.display();
  bnm.work();
}

abstract class Figure {
  void calculateArea();
}

class Rectangle extends Figure {
  int width;
  int height;
  Rectangle({required this.width, required this.height});

  @override
  void calculateArea() {
    int area = width * height;
    print("area=$area");
  }
}

class Person {
  String name;
  Person({required this.name});

  @override
  void display() {
    print("name: $name");
  }
}

class Worker {
  String company = "";

  @override
  void work() {
    print("work in: $company");
  }
}

class Employee implements Person, Worker {
  @override
  String name;
  String company;
  Employee({required this.name, required this.company});

  @override
  void display() {
    print("Employee name: $name");
  }

  @override
  void work() {
    print("Employee works in $company");
  }
}

class Person1 {
  String name;
  Person1(this.name);

  void display() {
    print("name: $name");
  }
}

class Worker1 {
  String company = "";

  void work() {
    print("work in $company");
  }
}

class Employee1 extends Person1 with Worker1 {
  Employee1(super.name, comp) {
    company = comp;
  }
}
