import 'package:flutter/material.dart';
import 'package:profile_ui_3/myStyle.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      height: 150,
      decoration: BoxDecoration(
          color: Color(0xffeaeaea),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Profile", style: titleText,),
          Icon(Icons.search, size: 30,)
        ],
      ),
    );// AppBar
  }
}
