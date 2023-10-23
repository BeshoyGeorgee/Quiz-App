import 'package:flutter/material.dart';

class WorkoutDetails extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String days;
  final String time;
  WorkoutDetails(
      {super.key,
        required this.image,
        required this.title,
        required this.description,
        required this.days,
        required this.time});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF8F9FC),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: Color(0xffE4E7EC))),
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1, color: Color(0xffE4E7EC))),
                            child: Text(
                              days,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            ImageIcon(AssetImage("assets/images/clock.png")),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 118,
                   // color: Colors.red,
                    height: 100,
                    child: Image.asset(
                      image,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
