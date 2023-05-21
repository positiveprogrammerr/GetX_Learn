import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../services/api_services.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(ApiServices());
   Get.put(HomeController());
  }

}