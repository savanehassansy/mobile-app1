import 'package:get/get.dart';
import '../routes/app_pages.dart';

class SplashController extends GetxController {
  //final getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      const Duration(seconds: 4),
      (() {
        Get.offAllNamed(Routes.HOME);
      }),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
