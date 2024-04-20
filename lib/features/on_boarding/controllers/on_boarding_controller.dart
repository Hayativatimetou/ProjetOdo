import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:startup/features/authanticattion/screens/sign_ups_screen.dart.dart';

class OnBoardingController extends GetxController {
  final box = GetStorage();
  var isFirstTime = true.obs;

  @override
  void onReady() {
    super.onReady();
    isFirstTime.value = box.read('isFirstTime') ?? true;
  }

  onDone() {
    box.write('isFirstTime', false);
    Get.off(() => SignUpsScreen());
  }
}
