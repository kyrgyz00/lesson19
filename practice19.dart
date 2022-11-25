void main() {
  Convertor grad = Convertor(c: 43);
  grad.convert();
  grad.convert1();
  Tiles lolo = Tiles(brand: "Balenciaga", size_h: 23, size_w: 45);
  lolo.getData();
  Children bobo = Children(name: "Aigi", surname: "Saiakbaev", age: 11);
  bobo._printPrivate();
  bobo.printPublic();
  Soda soda = Soda(dobavka: "pomegranate");
  soda.show_my_drink();
  Worker bob = Worker(name: "Yoha", surname: "Lolyev", rate: 110, days: 28);
  bob.getSalary();
  All dad = All(
      brand: "Bmw",
      car_class: "coupe",
      weight: 2500,
      driver: "Driver",
      engine: "V8",
      power: 880,
      brand_engine: "kompressor",
      name_surname: "Gus Gustava",
      exp: 11);
  dad.start();
  dad.stop();
  dad.turnLeft();
  dad.turnRight();
  dad.printCarSetting();
  Lorry volvo = Lorry(
      brand: "Volvo",
      car_class: "truck",
      driver: "Robot",
      engine: "electric",
      weight: 4500,
      carrying: 35000);
  volvo.info();
  SportCar Bugatti = SportCar(
      brand: "Bugatti",
      car_class: "coupe",
      driver: "hibrid",
      engine: "V16",
      weight: 4000,
      limitSpeed: 330);
  Bugatti.sport();
  Person robot = Person(name_surname: "Made by human", exp: 3);
  robot.printInfo();
  Tunnel train = Train(h: 6, w: 5, long_train: 100, h_train: 4, w_train: 4);
  train.chek();

  
}

class Farengeit {
  int c;
  Farengeit(this.c);

  void convert() {
    double f;
    f = (c * (9 / 5)) + 32;
    print("$c C = $f F");
  }
}

class Kelvin {
  int c;
  Kelvin(this.c);

  void convert1() {
    double k;
    k = c + 273;
    print("$c C = $k K");
  }
}

class Convertor implements Farengeit, Kelvin {
  int c;
  Convertor({required this.c});
  void convert() {
    double f;
    f = (c * (9 / 5)) + 32;
    print("$c C = $f F");
  }

  void convert1() {
    double k;
    k = c + 273;
    print("$c C = $k K");
  }
}

class Tiles {
  String brand;
  int size_h;
  int size_w;
  Tiles({
    required this.brand,
    required this.size_h,
    required this.size_w,
  });
  void getData() {
    print(" Brand: $brand, size h: $size_h, size w: $size_w");
  }
}

class Children {
  String _name = "Bars";
  String _surname = "Olayniev";
  int _age = 12;

  String name;
  String surname;
  int age;
  Children({
    required this.name,
    required this.surname,
    required this.age,
  });

  void _printPrivate() {
    print("Name: $_name, surname: $_surname, age: $_age");
  }

  void printPublic() {
    print("Name: $name, surname: $surname, age: $age");
  }
}

class Soda {
  String dobavka;
  String a = "limonade";
  String b = "orange";
  String c = "pomegranate";
  String d = "mango";
  Soda({required this.dobavka});

  void show_my_drink() {
    if (dobavka == a || dobavka == b || dobavka == c || dobavka == d) {
      print(" Soda and $dobavka");
    } else {
      print("Usual soda");
    }
  }
}

class Worker {
  String name;
  String surname;
  int rate;
  int days;
  Worker({
    required this.name,
    required this.surname,
    required this.rate,
    required this.days,
  });

  void getSalary() {
    print("Worker - $name $surname");
    print("Worker's salary: ${days * rate}");
  }
}

class Car {
  String brand;
  String car_class;
  int weight;
  String driver;
  String engine;
  Car({
    required this.brand,
    required this.car_class,
    required this.driver,
    required this.engine,
    required this.weight,
  });

  void start() {
    print("Let's go");
  }

  void stop() {
    print("stop");
  }

  void turnRight() {
    print("turn right");
  }

  void turnLeft() {
    print("turn left");
  }
}

class Engine {
  int power;
  String brand_engine;
  Engine({required this.brand_engine, required this.power});
}

class Driver {
  String name_surname;
  int exp;
  Driver({required this.name_surname, required this.exp});
}

class All implements Car, Engine, Driver {
  String brand;
  String car_class;
  int weight;
  String driver;
  String engine;
  int power;
  String brand_engine;
  String name_surname;
  int exp;
  All({
    required this.brand,
    required this.car_class,
    required this.weight,
    required this.driver,
    required this.engine,
    required this.power,
    required this.brand_engine,
    required this.name_surname,
    required this.exp,
  });
  void start() {
    print("Let's go");
  }

  void stop() {
    print("stop");
  }

  void turnRight() {
    print("turn right");
  }

  void turnLeft() {
    print("turn left");
  }

  void printCarSetting() {
    print(
        "Brand: $brand, car class: $car_class, weight: $weight, driver: $driver, engine: $engine,  power: $power, brand engine: $brand_engine,name / surname: $name_surname, experience: $exp years");
  }
}

class Lorry extends Car {
  int carrying;
  Lorry({
    required super.brand,
    required super.car_class,
    required super.driver,
    required super.engine,
    required super.weight,
    required this.carrying,
  });

  void info() {
    print(
        "Brand: $brand, car class: $car_class, weight: $weight, driver: $driver, engine: $engine, carrying weight: $carrying");
  }
}

class SportCar extends Car {
  int limitSpeed;
  SportCar(
      {required super.brand,
      required super.car_class,
      required super.driver,
      required super.engine,
      required super.weight,
      required this.limitSpeed});
  void sport() {
    print(
        "Brand: $brand, car class: $car_class, weight: $weight, driver: $driver, engine: $engine, limit speed: $limitSpeed");
  }
}

class Person extends Driver {
  Person({required super.name_surname, required super.exp});
  void printInfo() {
    print("name: $name_surname, experience: $exp");
  }
}

abstract class Tunnel {
  void chek() {
    print("disaster");
  }
}

class Train extends Tunnel {
  int h;
  int w;
  int long_train;
  int h_train;
  int w_train;
  Train({
    required this.h,
    required this.w,
    required this.long_train,
    required this.h_train,
    required this.w_train,
  });
  @override
  void chek() {
    if (h_train < h && w_train < w) {
      print("Train can go");
    } else {
      print("can't fit");
    }
  }
}
