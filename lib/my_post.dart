import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  MyPost({super.key, required this.postList});
  final List<Map<String, dynamic>> postList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length,

      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final post = postList[index];
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(post['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      post['titles'],
                      style: TextStyle(color: Colors.white, fontSize: 11,),
                    ),

                    SizedBox(width: 20),

                    Row(
                      children: [
                        Icon(Icons.comment, color: Colors.white, size: 20),
                        SizedBox(width: 8),
                        Text(
                          post['comments'].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),

                    SizedBox(width: 10),

                    Row(
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          post['likes'].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
