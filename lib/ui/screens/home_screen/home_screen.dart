import 'package:flutter/material.dart';
import 'package:flutter_background/shared/constants.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreenController _controller = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeScreenController>(builder: (_) {
        return GestureDetector(
          onTap: _controller.changeBackgroundColor,
          child: Container(
            color: _controller.backgroundColor,
            child: Center(
              child: Text(greeting),
            ),
          ),
        );
      }),
    );
  }
}
