// import 'dart:async';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shopping_app/Const/colors.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:shopping_app/Screens/login_screen.dart';
//
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   void initState(){
//     Timer(Duration(seconds: 3),()=>Navigator.push(context, CupertinoPageRoute(builder: (_) => LoginScreen())));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.deep_orange,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("Glory Cloth Zone",style: TextStyle(fontSize: 30.sp,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
//               SizedBox(height: 20.h,),
//               CircularProgressIndicator(color: Colors.lightGreenAccent,),
//             ]
//
//           ),
//         ),
//       ),
//     );
//   }
// }
