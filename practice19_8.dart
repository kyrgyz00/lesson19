import 'dart:io';

void main() {
  print("Choose one\nSmall-50 soms/20calories\nBig-100 som/40calories\n");
  Hamburger order = Hamburger();
  order.option();
}

class Hamburger {
  String ans = stdin.readLineSync()!;
  int _sumSom = 0;
  int _sumCal = 0;
  int _smallham = 50;
  int _bigham = 100;
  int _smallCal = 20;
  int _bigCal = 40;
  int _cheesesom = 10;
  int _cheeseCal = 20;
  int _salatSom = 20;
  int _salatCal = 5;
  int _potatoFreesom = 15;
  int _potatoCal = 10;
  int _seasoningsom = 15;
  int _seasonigCal = 0;
  int _mayonnaisesom = 20;
  int _mayonnaiseCal = 5;
  option() {
    print(
        "Choose Toppings\n1) Cheese(+10 som, +20 calories)\n2) Salat(+20 som, +5 calories)\n3) Potato free(+15 som, +10 calories)\nextra menu\n4) Seasonning(+15 som, +0 calory)\n5) Mayonnaise(+20 som, +5 calories\n6)return menu\n Enter to order)");
    if (ans == "Small") {
      _sumSom += _smallham;
      _sumCal += _smallCal;
      option_1();
    } else if (ans == "Big") {
      _sumSom += _bigham;
      _sumCal += _bigCal;
      option_1();
    } else {
      print("choose correct one");
      return option();
    }
  }
// }

// class Small extends Hamburger {
  option_1() {
    String ans1 = stdin.readLineSync()!;
    if (ans1 == "1") {
      _sumSom += _cheesesom;
      _sumCal += _cheeseCal;
      return option_1();
    } else if (ans1 == "2") {
      _sumSom += _salatSom;
      _sumCal += _salatCal;
      return option_1();
    } else if (ans1 == "3") {
      _sumSom += _potatoFreesom;
      _sumCal += _potatoCal;
      return option_1();
    } else if (ans1 == "4") {
      _sumSom += _seasoningsom;
      _sumCal += _seasonigCal;
      return option_1();
    } else if (ans1 == "5") {
      _sumSom += _mayonnaisesom;
      _sumCal += _mayonnaiseCal;
      return option_1();
    } else if (ans1 == "6") {
      return option();
    } else if (ans1 == "") {
      print(
          "Your order is $ans. Contains $_sumCal calories. Receipt is$_sumSom");
    } else {
      print("Chhose correct one!");
      return option_1();
    }
  }
}
