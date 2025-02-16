import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imgPath;
  const SquareTile({super.key,required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          border:
                Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
      ),
      child: Image.asset(imgPath),
      height: 50,
    );
  }
}
