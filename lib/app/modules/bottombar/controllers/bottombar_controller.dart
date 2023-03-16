import 'package:get/get.dart';

class BottombarController extends GetxController {
  var tabIndex = 0.obs;
  void changeTabindex(int index) {
    tabIndex = index.obs;
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
