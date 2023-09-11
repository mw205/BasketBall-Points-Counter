import 'package:get/get.dart';

class TeamControllerA extends GetxController {
  int points = 0;
  addThree() {
    points += 3;
    update();
  }

  addTwo() {
    points += 2;
    update();
  }

  addOne() {
    points += 1;
    update();
  }

  reset() {
    points = 0;
    update();
  }
}

class TeamControllerB extends GetxController {
  int points = 0;
  addThree() {
    points += 3;
    update();
  }

  addTwo() {
    points += 2;
    update();
  }

  addOne() {
    points += 1;
    update();
  }

  reset() {
    points = 0;
    update();
  }
}
