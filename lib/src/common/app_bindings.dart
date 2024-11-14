import 'package:explore/src/common/constants.dart';
import 'package:explore/src/controllers/theme_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController(), tag: Constants.kThemeController);
  }
}
