import 'package:get/get.dart';

class BottomController extends GetxController {
  RxInt currentIndex = 2.obs;

  selectedIndex(int index) {
    currentIndex.value = index;
    update();
  }
}
