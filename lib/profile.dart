import 'package:flutter/material.dart';
import 'package:profile_ui_3/myStyle.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 170),
        width: double.infinity,
        height: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/user.jpeg',),
            ),
            SizedBox(height: 10),
            Text("Fahim Muntasir", style: userNameText),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 17, color: Colors.grey),
                SizedBox(width: 3),
                Text(
                  "Dhanmondi 32, Sukarbad, Dhaka",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
      
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("8K", style: countText,),
                    Text("Posts", style: countText2,),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text("12M", style: countText,),
                    Text("Likes", style: countText2,),
                  ],
                ),
                SizedBox(width: 25,),
                Column(
                  children: [
                    Text("121K", style: countText,),
                    Text("Followers", style: countText2,),
                  ],
                ),
              ],
            )
      
          ],
        ),
      ),
    );
  }
}
