import 'package:embrance/network/SocketConnection.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{

  var userName = "".obs;
  final user = GetStorage();
  final SocketConnection socketConnection = Get.find<SocketConnection>();

  @override
  void onInit() {
    userName.value = user.read("username");

    super.onInit();
  }

}