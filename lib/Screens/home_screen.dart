import 'package:flutter/material.dart';
import 'package:shopping_app/Const/colors.dart';
import 'package:shopping_app/Screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopping_app/Const/colors.dart';
import 'package:shopping_app/Screens/home_screen.dart';
import 'package:shopping_app/Screens/login_screen.dart';
import 'package:shopping_app/Screens/signup_screen.dart';
import 'package:shopping_app/Screens/userform.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _searchController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child:Container(
            child: Column(
              children: [
                  Padding(
                    padding: EdgeInsets.only(left:20.w,right: 20.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50.h,
                            child: TextFormField(
                              controller: _searchController,
                                readOnly: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(0)),
                                        borderSide: BorderSide(color: Colors.blue)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(0)),
                                        borderSide: BorderSide(color: Colors.grey)),
                                    hintText: "Search products here",
                                    hintStyle: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                          )
                        ),
                        GestureDetector(
                          child: Container(
                            color: Colors.lightBlue,
                            height: 50.h,
                            width: 50.h,
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          onTap: (){},
                        ),
                      ]),
                  ),
                SizedBox(height: 20.h,),
                Text("Top Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 15.h,),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 300.w,
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset("images/101.jpg"),
                                Text("Price 2200",style: TextStyle(fontSize: 30.sp,fontWeight:FontWeight.bold)),
                              ],
                            ),
                          ),

                        ),
                        SizedBox(
                          width: 300.w,
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset("images/102.jpg"),
                                  Text("Price 1500",style: TextStyle(fontSize: 30.sp,fontWeight:FontWeight.bold)),
                                ],
                              ),
                            ),
                        ),
                        SizedBox(
                          width: 300.w,
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset("images/103.jpg"),
                                  Text("Price 3200",style: TextStyle(fontSize: 30.sp,fontWeight:FontWeight.bold)),
                                ],
                              ),
                            ),
                        ),
                        SizedBox(
                          width: 300.w,
                            child: Container(
                              child: Column(
                                children: [
                                  Image.asset("images/104.jpg"),
                                  Text("Price 600",style: TextStyle(fontSize: 30.sp,fontWeight:FontWeight.bold)),
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),
                ),
                    ],
                  )
            ),
          ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: AppColors.deep_orange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle:
        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label:"Favourite"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label:"Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
        onTap: (index) {
              HomeScreen();
        },
      ),
    );
  }
}
