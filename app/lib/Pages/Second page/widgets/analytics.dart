import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  final String Firsttitle;
  final String Secondttitle;
  final String Thirdttitle;
  final String Firsticon;
  final String Secondticon;
  final String Firstcontent;
  final String Secondcontent;
  final String Thirdcontent;
  final String FirstSubcontent;
  final String SecondSubcontent;
  final String ThirdSubcontent;
  const Analytics(
      {super.key,
        required this.Firstcontent,
        required this.Firsticon,
        required  this.FirstSubcontent,
        required this.Firsttitle,
        required this.Secondcontent,
        required this.SecondSubcontent,
        required this.Secondticon,
        required this.Secondttitle,
        required this.Thirdcontent,
        required this.ThirdSubcontent,
        required this.Thirdttitle
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //color: Colors.red,
          color: Color(0xffF8F9FC),
          borderRadius: BorderRadius.circular(8)),
      width: 400,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 120,
            height: 100,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage(Firsticon),
                        color: Color(0xff717BBC),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        Firsttitle,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Firstcontent,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      FirstSubcontent,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          VerticalDivider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Color(0xffD9D9D9),
          ),
          Container(
            width: 120,
            height: 100,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage(Secondticon),
                          color: Color(0xff717BBC),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          Secondttitle,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Secondcontent,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      SecondSubcontent,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          VerticalDivider(
            indent: 15,
            endIndent: 15,
            thickness: 1,
            color: Color(0xffD9D9D9),
          ),
          Container(
            width: 120,
            height: 100,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xff717BBC),
                          size: 25,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          Thirdttitle,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Thirdcontent,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ThirdSubcontent,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
