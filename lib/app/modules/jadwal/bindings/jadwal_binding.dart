import 'package:get/get.dart';
import 'package:myapp/app/modules/jadwal/controllers/jadwal_controller.dart';

class JadwalBinding extends Bindings {
  @override

  void dependencies() {
    Get.put(JadwalController());
  }
}
