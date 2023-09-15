import 'package:ecommercecourse/core/services/services.dart';
import 'package:get/get.dart';

translateDatabase(columnar, columnen) {
  MyServices myServices = Get.find();

  if (myServices.sharedPref.getString("lang") == "ar") {
    return columnar;
  } else {
    return columnen;
  }
}
