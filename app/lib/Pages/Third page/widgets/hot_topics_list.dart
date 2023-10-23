import 'package:flutter/material.dart';

class HotTopicList extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  HotTopicList({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        //color: Colors.black,
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xffFEF0C7),
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                title,
                style: TextStyle(
                    color: Color(0xff93370D),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              description,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
