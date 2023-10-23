import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/Pages/First%20page/widgets/emojis.dart';
import 'package:quiz_app/Pages/First%20page/widgets/exercise.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  static String routeName = "first page";

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
final myItems = [
  Image.asset(("assets/images/Walking the Dog.png")),
  Image.asset(("assets/images/yoga.png")),
  Image.asset(("assets/images/meditation.png")),
  Image.asset(("assets/images/relaxation.png")),
];
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 40),
              child: Container(
                //color: Colors.black,
                width: 400,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 60,
                            //color: Colors.red,
                            child: Image(
                                image: AssetImage(
                                    "assets/images/moody logo3x.png")),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 80,
                            width: 110,
                            //color: Colors.yellow,
                            child: Text("Moody",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 32, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 100,
                        //color: Colors.green,
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
            ),
            Column(
              children: [],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              child: Container(
                width: 30,
                // color: Colors.yellow,
                child: Row(
                  children: [
                    Text(
                      "Hello, ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Sara Rose",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Container(
                  //color: Colors.yellow,
                  child: Text(
                "How are you feeling today ?",
                style: TextStyle(fontSize: 24),
              )),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                width: 400,
                height: 140,
                //color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Emojis(image: "assets/images/love.png", title: "Love"),
                    Emojis(image: "assets/images/cool.png", title: "Cool"),
                    Emojis(image: "assets/images/happy2.png", title: "Happy"),
                    Emojis(image: "assets/images/sad.png", title: "Sad"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
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
                        width: 100,
                        //color: Colors.green,
                        child: Text(
                          "Feature",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        )),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          //color: Colors.red,
                          child: Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff027A48),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xff027A48),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffECFDF3),
                    borderRadius: BorderRadius.circular(16)),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Positive vibes",
                            style: TextStyle(
                                color: Color(0xff344054),
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Boost your mood with\npositive vibes",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.play_circle,
                                color: Color(0xff32D583),
                                size: 30,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "10 mins",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: CarouselSlider(options: CarouselOptions(
                        aspectRatio: 1.5,
                          viewportFraction: 1,
                          autoPlay: true,
                          height: 130,
                          onPageChanged: (index,reason){
                            setState(() {
                              currentSlide == index;
                            });
                          }
                      ),
                        items: myItems,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              child: AnimatedSmoothIndicator(
                activeIndex: currentSlide,
                count: myItems.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Color(0xffD9D9D9),
                  activeDotColor: Color(0xff98A2B3),
                  paintStyle: PaintingStyle.fill
                ),


              ),
            ),
            SizedBox(height: 40),
            Container(
              //color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: 100,
                        //color: Colors.green,
                        child: Text(
                          "Exercise",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        )),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          //color: Colors.red,
                          child: Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff027A48),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                          color: Color(0xff027A48),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Container(
                height: 200,
                // color: Colors.red,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: exerciseList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisExtent: 70,
                      mainAxisSpacing: 16),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: exerciseList[index].color,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 9),
                            height: 35,
                            child: Image(
                              image: AssetImage(exerciseList[index].image),
                            ),
                          ),
                          Text(
                            exerciseList[index].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
