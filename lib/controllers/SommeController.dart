import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/list_notifier.dart';
import 'package:get_storage/get_storage.dart';

class SommeController extends GetxController {
  final cont1 = 0.obs;
  final cont2 = 0.obs;
  final name = "Mouhamed Jihed ".obs;
  GetStorage box = GetStorage();

  @override
  void onInit() {
    if (box.read('cont1') != null) {
      cont1.value = box.read("cont1");
      cont2.value = box.read("cont2");
    }
  }
  
  

  int get sum => cont1.value + cont2.value;
  increment1() => cont1.value++;
  increment2() => cont2.value++;

  save() {
    box.write("cont1", cont1.value);
    box.write("cont2", cont2.value);

  }
}
