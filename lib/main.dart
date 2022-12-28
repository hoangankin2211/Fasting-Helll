import 'package:fasting_hell/screens/fasting_plan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fasting Hell',
      theme: ThemeData(
        primaryColor: AppColors.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Sen",
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontFamily: 'Sen',
            fontSize: 15,
            color: Colors.black38,
          ),
          //For number home_screen
          headline2: TextStyle(
            fontFamily: 'Sen',
            fontSize: 23,
            fontWeight: FontWeight.w600,
            foreground: Paint()
              ..shader = LinearGradient(colors: [
                const Color.fromARGB(255, 199, 231, 247),
                Colors.blue[200]!,
                Colors.blue[300]!,
                Colors.blue[400]!,
                Colors.blue[500]!,
              ]).createShader(
                const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
              ),
          ),

          //For home_screen
          headline3: const TextStyle(
            fontFamily: 'Sen',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          //Title
          headline4: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          //Normal text (info,notice,...)
          headline5: const TextStyle(
            color: Colors.black54,
            fontSize: 15,
          ),

          headline6: const TextStyle(
            color: Colors.black26,
            fontSize: 18,
          ),
        ),
      ),
      initialRoute: FastingPlanScreen.routeName,
      getPages: [
        GetPage(
            name: FastingPlanScreen.routeName, page: () => FastingPlanScreen())
      ],
      defaultTransition: Transition.cupertino,
    );
  }
}
