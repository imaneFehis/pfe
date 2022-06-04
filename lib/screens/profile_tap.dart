import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:log_page_imane/controllers/auth_controller.dart';
import 'package:log_page_imane/main.dart';
import 'package:log_page_imane/models/user.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthController authController = Get.find<AuthController>();

  Widget _ProfilePic() => InkWell(
        onTap: () async {
          // ignore: invalid_use_of_visible_for_testing_member
          try {
            String? path = await ImagePicker.platform
                .getImage(source: ImageSource.gallery)
                .then((img) {
              return img?.path ?? '';
            });
            if (path != null) {
              authController.updateUserInfo(User(picture: File(path)));
            }
            authController.isLoading = false;
            authController.update();
          } catch (e) {
            print(e);
          }
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            // backgroundImage: AssetImage('assets/profilepic.jpg'),
            backgroundImage: authController.currentUser!.picture != null
                ? NetworkImage(
                    authController.currentUser!.picture!,
                  )
                : null,
            child: authController.currentUser!.picture == null
                ? const Icon(Icons.person, size: 75)
                : null,
            radius: 70,
          ),
        ),
      );

  Widget _Name() {
    return Column(children: <Widget>[
      Container(
        color: Colors.white,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: Row(
          children: <Widget>[],
        ),
      ),
    ]);

    /*crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Name',
        style: kLabelStyle,
      ),
    SizedBox(height: 20.0),
*/

    /*  Container(
    alignment: Alignment.centerLeft,
      decoration: kBoxDecorationStyle,
    height: 60.0,
    child: TextField(
    keyboardType: TextInputType.name,
      style: TextStyle(color: Color(0xFF8D6B48)
          ,fontFamily: 'OpenSans',
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 14.0),
         hintText: ' your name',
        hintStyle: kHintTextStyle,
      ),
    ),
    ),
      ),
  ], aw gotlk nn papa f dar 
    );*/
  }

  @override
  void initState() {
    authController.refreshUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFbdffff),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              await authController.signOut();
              Get.offAll(WelcomeScreen());
            },
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          'YOUR PROFILE',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<AuthController>(
        builder: (context) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _ProfilePic(),

                    InkWell(
                      onTap: () {
                        updateInof(
                          onConfirm: (value) async {
                            await authController.updateUserInfo(
                              User(username: value),
                            );
                          },
                          initValue: authController.currentUser!.username,
                          labelText: 'Username',
                          title: 'Change your username',
                          textInputType: TextInputType.text,
                        );
                      },
                      child: Container(
                        color: Color(0xFFFbdffff),
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              authController.currentUser!.username!,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'TiroBangla',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        updateInof(
                          onConfirm: (value) async {
                            await authController
                                .updateUserInfo(User(phone: value));
                          },
                          initValue: authController.currentUser!.phone,
                          labelText: 'Phone number',
                          title: 'Add your number',
                          textInputType: TextInputType.phone,
                        );
                      },
                      child: Container(
                        color: Color(0xFFFbdffff),
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              authController.currentUser!.phone == ''
                                  ? 'Add your number'
                                  : authController.currentUser!.phone!,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Source Sans Pro',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        updateInof(
                          onConfirm: (value) async {
                            await authController
                                .updateUserInfo(User(email: value));
                          },
                          initValue: authController.currentUser!.email,
                          labelText: 'Email',
                          title: 'Change your Email',
                          textInputType: TextInputType.emailAddress,
                        );
                      },
                      child: Container(
                        color: Color(0xFFFbdffff),
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              authController.currentUser!.email!,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'TiroBangla',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        updateInof(
                          onConfirm: (value) async {
                            await authController
                                .updateUserInfo(User(address: value));
                          },
                          initValue: authController.currentUser!.address,
                          labelText: 'Address',
                          title: 'Change your Address',
                          textInputType: TextInputType.text,
                        );
                      },
                      child: Container(
                        color: Color(0xFFFbdffff),
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              authController.currentUser!.address == ''
                                  ? "Add your address"
                                  : authController.currentUser!.address!,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'TiroBangla',
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //_ProfilePic(),
                  ],
                ),
              ),
              authController.isLoading
                  ? Container(
                      width: Get.width,
                      height: double.infinity,
                      color: Colors.black38,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    )
                  : const SizedBox(),
            ],
          );
        },
      ),

      //   bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0XFF8D6B48),
      //   selectedItemColor: Colors.white,
      //   onTap: (index){},
      //   currentIndex: 1,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',
      //       backgroundColor: Colors.blueAccent,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'profil',
      //     ),

      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'favorite',
      //       backgroundColor: Colors.red,
      //     ),
      //   ],

      // ),
    );
  }

  void updateInof({
    String title = '',
    required Function(String) onConfirm,
    String? initValue,
    String? labelText,
    TextInputType? textInputType,
  }) async {
    TextEditingController controller = TextEditingController(
      text: initValue,
    );
    Get.defaultDialog(
      title: title,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      content: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.blue),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
      ),
      onCancel: () => Get.back(),
      onConfirm: () async {
        await onConfirm(controller.text);
        Get.back();
      },
    );
  }
}
