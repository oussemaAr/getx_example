import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_exemple/screens/Second.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MainPageView(),
    );
  }
}

class MainPageView extends StatefulWidget {
  MainPageView({Key key}) : super(key: key);

  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final TextEditingController emailcontroller = TextEditingController();

  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    box.writeIfNull("email", "test email");
    print(box.read('email'));

    return Scaffold(
      appBar: AppBar(
        title: Text("title".trArgs([box.read('email')])),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () {
          Get.to(SecondPage(),arguments: "FROM PAGE 1 ");
        },
        icon: Icon(Icons.next_plan),
        label: Text('next'.tr),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextFormField(
                obscureText: false,
                controller: emailcontroller,
              ),
            ),
            RaisedButton.icon(
              label: Text("Valider".tr),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
                GetUtils.isEmail(emailcontroller.text)
                    ? Get.snackbar("correct".tr, "formatgood".tr,
                        backgroundColor: Colors.greenAccent,
                        snackPosition: SnackPosition.BOTTOM)
                    : Get.snackbar(
                        "incorrect".tr,
                        "formatbad".tr,
                        backgroundColor: Colors.redAccent,
                        snackPosition: SnackPosition.TOP,
                      );
                box.write("email", emailcontroller.text);
                setState(() {});
              },
              icon: Icon(Icons.check_box_rounded),
            ),
            RaisedButton.icon(
              label: Text("Changer FR "),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
                Get.updateLocale(Locale('fr'));
              },
              icon: Icon(Icons.g_translate_rounded),
            ),
            RaisedButton.icon(
              label: Text("Changer EN "),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
                Get.updateLocale(Locale('en'));
              },
              icon: Icon(Icons.g_translate_rounded),
            ),
            RaisedButton.icon(
              label: Text("Changer AR "),
              textColor: Colors.white,
              color: Colors.teal,
              onPressed: () {
                Get.updateLocale(Locale('ar'));
              },
              icon: Icon(Icons.g_translate_rounded),
            ),
          ],
        )),
      ),
    );
  }
}
