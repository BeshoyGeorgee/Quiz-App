import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Pages/Third%20page/widgets/home_list.dart';
import 'package:quiz_app/Pages/Third%20page/widgets/hot_topics_list.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({super.key});
  static String routeName = "third page";

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  bool click = true;
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 400,
                //color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/Frameflowe2x.png")),
                    Text(
                      "AliceCare",
                      style: GoogleFonts.caveat(fontSize: 50),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: Color(0xffD0D5DD),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_sharp,
                    size: 30,
                    color: Color(0xff667085),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Articles, Video, Audio and More,...",
                    style: TextStyle(fontSize: 20, color: Color(0xff667085)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentindex = index;
                            click = !click;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (currentindex == index)
                                  ? Color(0xffF4EBFF)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                width: 1,
                                color: (currentindex == index)
                                    ? Color(0xffD6BBFB)
                                    : Color(0xffE4E7EC),
                              )),
                          alignment: Alignment.center,
                          width: 110,
                          child: Text(
                            homeListTitle[index].title,
                            style: TextStyle(
                                color: (currentindex == index)
                                    ? Color(0xff6941C6)
                                    : Color(0xff667085),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 14,
                        ),
                    itemCount: homeListTitle.length),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              //color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      //color: Colors.green,
                      child: Text(
                        "Hot topics",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 80,
                          //color: Colors.red,
                          child: Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff5925DC),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xff5925DC),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        HotTopicList(
                            title: "SELF-CARE",
                            description:
                                "10 Easy Self-Care\nIdeas That Can\nHelp Boost\nYour Health",
                            image: "assets/images/selfcare.jpg"),
                        SizedBox(
                          width: 14,
                        ),
                        HotTopicList(
                            title: "CYCLE",
                            description:
                                "How to take care of\nMenstrual Hygiene\nduring Menstrual Cycle",
                            image: "assets/images/cycle.jpg"),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: 350,
              //color: Colors.green,
              child: Text(
                "Get Tips",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 210,
              width: 350,
              color: Color(0xffF2F4F7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage("assets/images/Doctor-PNG-Images 1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with doctors &\nget suggestions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Connect now and get\nexpert insights",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 130,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xff7F56D9),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "View detail",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 300,
                  //color: Colors.green,
                  child: Text(
                    "Cycle Phases and Period",
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 60,
                      //color: Colors.red,
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff5925DC),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color: Color(0xff5925DC),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

