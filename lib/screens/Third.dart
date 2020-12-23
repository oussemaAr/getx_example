import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_exemple/controllers/SommeController.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ThirdPageView(),
    );
  }
}

class ThirdPageView extends StatefulWidget {
  ThirdPageView({Key key}) : super(key: key);

  @override
  _ThirdPageViewState createState() => _ThirdPageViewState();
}

class _ThirdPageViewState extends State<ThirdPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Get.find<SommeController>().name.value)),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GetX<SommeController>(
            builder: (_) {
              return Center(
                child: Text(
                  'Counter #1 :    ${_.cont1.value}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text("Increment Counter #1"),
            onPressed: () {
              Get.find<SommeController>().increment1();
            },
          ),
          GetX<SommeController>(
            builder: (_) {
              return Center(
                child: Text(
                  'Counter #2 :    ${_.cont2.value}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            },
          ),
          RaisedButton(
            child: Text("Increment Counter #2"),
            onPressed: () {
              Get.find<SommeController>().increment2();
            },
          ),
          GetX<SommeController>(builder: (_) {
              print("sum rebuild");
              return Center(
                child: Container(
                  width: Get.width *0.5,
                  height: Get.height*0.2,
                  child: Text(
                    'Sum:                 ${_.sum}',
                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),

             RaisedButton(
            child: Text("Save"),
            onPressed: () {
              Get.find<SommeController>().save();
            },
          ),
        ],
      )),
    );
  }
}
