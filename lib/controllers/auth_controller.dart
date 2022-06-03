import 'package:get/get.dart';

import '../auth/auth_api.dart';
import '../models/user.dart';

class AuthController extends GetxController with AuthAPI {
  bool isLoading = false;
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

  Future<User> updateUserInfo(User user) async {
    isLoading = true;
    update();
    User userResponse = await super.updateUserInfo(user);
    await refreshUserInfo();
    isLoading = false;
    update();
    return userResponse;
  }
}
