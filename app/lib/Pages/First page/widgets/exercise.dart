import 'dart:ui';

class Exercise {
  final String title;
  final String image;
  final Color color;

  Exercise({required this.title, required this.image, required this.color});
}

final List<Exercise> exerciseList=[
  Exercise(title: "Relaxation", image: "assets/images/relaxation.png", color: Color(0xffF9F5FF)),
  Exercise(title: "Meditation", image: "assets/images/meditation.png", color: Color(0xffFDF2FA)),
  Exercise(title: "Beathing", image: "assets/images/breathing.png", color:Color(0xffFFFAF5)),
  Exercise(title: "Yoga", image: "assets/images/yoga.png", color: Color(0xffF0F9FF)),
];



