import 'package:flutter/material.dart';
import 'package:quiz_app/Pages/Second%20page/widgets/Workouts_details.dart';
import 'package:quiz_app/Pages/Second%20page/widgets/all_type_details.dart';
import 'package:quiz_app/Pages/Second%20page/widgets/analytics.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});
  static String routeName = "second page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Container(
            width: 400,
            height: 100,
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      // color: Colors.purpleAccent,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: 230,
                      height: 80,
                      //color: Colors.redAccent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, Jade",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Ready to workout?",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 80,
                  //color: Colors.yellow,
                  child: Badge(
                    smallSize: 10,
                    child: Icon(
                      Icons.notifications_none,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Analytics(
            Firstcontent: "81",
            Firsticon: "assets/images/heart.png",
            FirstSubcontent: "BPM",
            Firsttitle: "Heart Rate",
            Secondcontent: "32,5",
            SecondSubcontent: "%",
            Secondticon: "assets/images/list.png",
            Secondttitle: "To-Do",
            Thirdcontent: "1000",
            ThirdSubcontent: "Cal",
            Thirdttitle: "Calo"),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Container(
            alignment: Alignment.bottomLeft,
            child: Text(
              "Workout Programs",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
        ),
        Container(
          child: TabBar(
              controller: tabController,
              unselectedLabelColor: Color(0xff667085),
              indicatorColor: Color(0xff363F72),
              labelColor: Color(0xff363F72),
              labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              labelPadding: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                Tab(
                  text: "All Type",
                ),
                Tab(
                  text: "Full Body",
                ),
                Tab(
                  text: "Upper",
                ),
                Tab(
                  text: "Lower",
                ),
              ]),
        ),
        Expanded(
          child: Container(
            //color: Colors.red,
            width: 420,
            child: TabBarView(controller: tabController, children: <Widget>[
              AllTypeDetails(
                  image: "assets/images/[removal 2.png",
                  title: "Morning Yoga",
                  description: "Improve mental focus.",
                  days: "7 days",
                  time: "30 mins"),
              WorkoutDetails(
                  image: "assets/images/img_1.png",
                  title: "Plank Exercise",
                  description: "Improve posture and stability",
                  days: "13 days",
                  time: "20 mins"),
              AllTypeDetails(
                  image: "assets/images/[removal 2.png",
                  title: "Bench Press",
                  description: "Improve mental focus.",
                  days: "10 days",
                  time: "15 mins"),
              WorkoutDetails(
                  image: "assets/images/img_1.png",
                  title: "Squat Exercise",
                  description: "Improve posture and stability",
                  days: "20 days",
                  time: "40 mins"),

            ]),
          ),
        ),
      ],
    );
  }
}
