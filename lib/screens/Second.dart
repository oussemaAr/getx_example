import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SecondPageView();
  }
}

class SecondPageView extends StatefulWidget {
  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  GetStorage box = GetStorage();
  var arg = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(box.read('email')),
        
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(arg.toString()),
                SizedBox(
                  width: Get.width * 0.4,
                  height: Get.height * 0.4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  RaisedButton.icon(
                          textColor: Colors.white,
                          color: Colors.blueGrey,
                          onPressed: () {
                            // Respond to button press
                            box.erase();
                            Get.updateLocale(Get.deviceLocale);
                            Get.offAllNamed('/mainPage');
                          },
                          icon: Icon(Icons.chevron_left_rounded, size: 18),
                          label: Text("Back".tr),
                        ),
                        RaisedButton.icon(
                          textColor: Colors.white,
                          color: Colors.blueGrey,
                          onPressed: () {
                            // Respond to button press
                            Get.toNamed('/thirdPage');
                          },
                          icon: Icon(Icons.chevron_right_rounded, size: 18),
                          label: Text("next".tr),
                        )



                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
