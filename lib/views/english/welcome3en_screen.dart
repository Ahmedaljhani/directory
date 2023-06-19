import 'package:flutter/material.dart';

import '../../animations/customShimmerAnimation.dart';
import '../../app_them.dart';

class Welcome3EnScreen extends StatefulWidget {
  const Welcome3EnScreen({Key? key}) : super(key: key);

  @override
  _Welcome3EnScreenState createState() => _Welcome3EnScreenState();
}

class _Welcome3EnScreenState extends State<Welcome3EnScreen> {
  @override
  void initState() {
    super.initState();
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
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: SingleChildScrollView(
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
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * 0.353,
                            ),
                            Image.asset(
                              "assets/images/mapicon.png",
                              width: screenWidth * 0.9,
                            ),



                            SizedBox(height: screenHeight*0.05,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text("Ease of access to the geographical locations of the entities affiliated with the Ministry"

                                ,style: AppTheme.welcometext,textAlign: TextAlign.center,
                              ),
                            ),


                            SizedBox(
                              height: screenHeight * 0.1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),

                                SizedBox(width: 8),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: AppTheme.third,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.35,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                          const MaterialStatePropertyAll(
                                              AppTheme.primary),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                                // side: BorderSide(color: Colors.red)
                                              ))),
                                      onPressed: () {

                                        // Navigator.of(context)
                                        //     .pushReplacement(ToScreenAnimation(page: Welcome2EnScreen()));
                                      },

                                      child: const Text(
                                        "Continue",
                                        style: AppTheme.btnprimary,
                                      )),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.05,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.35,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                          const MaterialStatePropertyAll(
                                              AppTheme.white),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(30.0),
                                                // side: BorderSide(color: Colors.red)
                                              ))),
                                      // onPressed: () {

                                      //   Navigator.of(context)
                                      //       .pushReplacement(ToScreenAnimation(page: LoginScreen()));
                                      // },
                                      onPressed: () {},
                                      child: const Text(
                                        "Skip",
                                        style: AppTheme.btnwhite,
                                      )),
                                ),


                              ],
                            ),
                            SizedBox(height: screenHeight*0.15,)
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
