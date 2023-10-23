import 'package:flutter/material.dart';

class Emojis extends StatelessWidget {
  final String title;
  final String image;
  Emojis({super.key, required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffE4E7EC),
            radius: 40,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
               radius: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            width: 80,
            height: 30,
          //  color: Colors.red,
            child: Text(title,style: TextStyle(
              fontSize: 20
            ),),
          )
        ],
      ),
    );
  }
}

