import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var bgClr = Color(0xff425884);
  var pressedBool = true;
  changeStatus() {
    if (pressedBool) {
      pressedBool = false;
    } else {
      pressedBool = true;
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
