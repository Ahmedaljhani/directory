import 'package:directory/app_them.dart';
import 'package:flutter/material.dart';

import '../animations/customShimmerAnimation.dart';
import '../animations/toScreenAnimation.dart';
import 'arabic/welcom1_screen.dart';
import 'languge_screen.dart';

//designed by eng.Ahmed Fathi Aljhani   pohne: 0924653448  email:https://www.linkedin.com/in/ahmed-aljhani/


class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


  Future<void> loadData() async {
    // Add your app initialization logic here
    await Future.delayed(
        const Duration(milliseconds: 2950)); // Simulate a delay of 2 seconds
  }
  @override
  void initState() {
    super.initState();
    loadData().then((_) {
      Navigator.of(context)
          .pushReplacement(ToScreenAnimation(page: LangugeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
     List<Color> gradientColors = [
      AppTheme.primary,
      AppTheme.secondry.withOpacity(0.74),
      AppTheme.third.withOpacity(0.71),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: CustomShimmerAnimation(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.095,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Image.asset(
                      "assets/images/logobg.png",
                      fit: BoxFit.cover,
                      width: screenWidth * 1,
                      height: screenHeight * 0.4,
                    ),
                  ),
                ],
              ),
              Opacity(
              opacity: 1,
              child: Container(
                  width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),),
                child: const Center(
                  child: FadeInImage(
                    width: 150,
                    fadeInDuration: Duration(seconds: 1),
                    fadeOutDuration: Duration(seconds: 1),
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    placeholder: AssetImage(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
            ),]
          ),
        ));
  }
}
