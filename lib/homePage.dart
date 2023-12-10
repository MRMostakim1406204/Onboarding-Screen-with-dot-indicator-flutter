import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_with_dot_indicator_flutter/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showNextButton: true,
        showSkipButton: true,
        skip: Text("Skip"),
        next: Text("Next"),
        // back: Text("Back"),
        //showBackButton: true,
        dotsDecorator: DotsDecorator(
          color: Colors.grey,
          size: Size(10, 10),
          activeColor: Colors.green,
          activeSize: Size(20, 10),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          )
        ),
        pages: [
          PageViewModel(
            title: "MR Mostakim",
            body: "Motiur Rahman Mostakim",
            image: Image.asset("assets/Mostakim/mostakim.jpg")
          ),
          PageViewModel(
            title: "Mostakim",
            body: "Motiur Rahman Mostakim",
            image: Image.asset("assets/Mostakim/20221228041800.jpg")
          ),
          PageViewModel(
            title: "Motiur",
            body: "Motiur Rahman Mostakim",
            image: Image.asset("assets/Mostakim/dc1.PNG")
          ),
        ],
        onSkip: (){
          Navigator.push(context, CupertinoDialogRoute(builder: (context)=>Home(), context: context));
        },
        onDone: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context)=>Home()));
        },
        done: Text("Done",style: TextStyle(
          fontSize: 20,color: Colors.black
        ),),
      ),
    );
  }
}