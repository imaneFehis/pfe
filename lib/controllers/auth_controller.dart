import 'package:get/get.dart';

import '../auth/auth_api.dart';

class AuthController extends GetxController with AuthAPI {
  Future<void> initData() async {
    await getTokenFromSP();
    if (isLogin) await refreshUserInfo();
  }

  @override
  Future<void> refreshUserInfo() async {
    await super.refreshUserInfo();
    update();
  }

  @override
  Future<void> signOut() {
    Get.delete();
    return super.signOut();
  }
}
