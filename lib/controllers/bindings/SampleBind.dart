

import 'package:get/get.dart';
import 'package:getx_exemple/controllers/SommeController.dart';

class SampleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SommeController>(() => SommeController());
  }

}