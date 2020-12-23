

import 'package:flutter/material.dart';

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
      appBar: AppBar(),
          body: Container(
         child: Text("    THird Page "),
      ),
    );
  }
}