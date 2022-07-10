import 'package:e_encommerce/controller/app_conroller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController(), fenix: true);
  }
}
