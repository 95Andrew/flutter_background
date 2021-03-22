import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeScreenController extends GetxController {
  Color backgroundColor = Color(0xFFFFFFFF);
  Random random = Random();

  void changeBackgroundColor() {
    backgroundColor = Color.fromARGB(random.nextInt(256), random.nextInt(256), random.nextInt(256), random.nextInt(256));
    update();
  }
}
