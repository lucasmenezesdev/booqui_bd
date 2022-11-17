import 'package:get/get.dart';

import 'controller_autores_page.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerAutoresPage());
  }
}
