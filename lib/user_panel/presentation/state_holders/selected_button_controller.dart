import 'package:get/get.dart';

class SelectedButtonController extends GetxController {
  RxBool isButtonSelected = true.obs;
  RxBool isIconSelected = true.obs;
  void changeButton(bool value) {
    isButtonSelected.value = value;
  }

  void changeIcon(bool isIcon) {
    isIconSelected.value = isIcon;
  }
}
