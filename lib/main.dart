import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/data/local/db/app_db.dart';
import 'package:job_task/view/home/home.dart';
import 'package:job_task/view/home/home_two.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AppDb());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeTwo(),
    );
  }
}


