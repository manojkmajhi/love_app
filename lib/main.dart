import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:love_app/app/core/theme/theme.dart';
import 'package:love_app/app/core/theme/util.dart';

import 'app/routes/app_pages.dart';

void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Poppins", "Montserrat");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: "Love App",
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
