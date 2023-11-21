import 'package:EMOOL/core/constant/routes.dart';
import 'package:EMOOL/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
      String userid = myServices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users${userid.toString()}");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login) ; 
  }
}