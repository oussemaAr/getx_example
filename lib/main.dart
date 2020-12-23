import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_exemple/controllers/bindings/SampleBind.dart';
import 'package:getx_exemple/screens/MainPage.dart';
import 'package:getx_exemple/screens/Third.dart';
import 'package:getx_exemple/utils/MyTranslations.dart';

void  main() async {
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: true,
    debugShowMaterialGrid: false,
    initialRoute: '/mainPage',
    theme: ThemeData(accentColor: Colors.teal, primaryColor: Colors.blueAccent),
    defaultTransition: Transition.zoom,
    locale: Get.deviceLocale,
    fallbackLocale: Locale('fr'),
    translations: MyTranslations(),
    getPages: [
    GetPage(name: '/mainPage', page: () => MainPage()),
    GetPage(name: '/thirdPage', page: ()=> ThirdPage() ,binding: SampleBind() ),
    
    ],
  ));
}
