import 'package:food_delivery_multi_panel_app/user_panel/presentation/state_holders/selected_button_controller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(SelectedButtonController());
    ;
  }
}
