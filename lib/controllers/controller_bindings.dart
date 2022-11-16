import 'package:booqui_app/controllers/controller_autores_page.dart';
import 'package:booqui_app/controllers/controller_obras_page.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerAutoresPage());
    Get.put(ControllerObrasPage());
  }
}
