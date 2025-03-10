import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/Screens/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(375,812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Glory Cloth Zone",
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          home: LoginScreen(),

        ),
    );
  }
}