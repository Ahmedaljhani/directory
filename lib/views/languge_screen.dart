import 'package:directory/views/arabic/welcom1_screen.dart';
import 'package:flutter/material.dart';

import '../animations/customShimmerAnimation.dart';
import '../animations/toScreenAnimation.dart';
import '../app_them.dart';
import 'english/welcom1en_screen.dart';

class LangugeScreen extends StatefulWidget {
  const LangugeScreen({Key? key}) : super(key: key);

  @override
  _LangugeScreenState createState() => _LangugeScreenState();
}

class _LangugeScreenState extends State<LangugeScreen> {
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
                              height: screenHeight * 0.3,
                            ),
                            Text(
                              'مرحبا بك',
                              style: AppTheme.welcome,
                            ),
                            SizedBox(
                              height: screenHeight * 0.03,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14.0),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/logo2.png",
                                        width: screenWidth * 0.35,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.03,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "دليل المواقع الإلكترونية لوزارة الزراعة والثروة الحيوانية",
                                            style: AppTheme.headline1,
                                          ),
                                          SizedBox(
                                            height: screenHeight * 0.01,
                                          ),
                                          Directionality(
                                            textDirection: TextDirection.ltr,
                                            child: Text(
                                              "Directory of websites of the Ministry of Agriculture and Wealth",
                                              style: AppTheme.headline1,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.2,
                            ),
                            Text(
                              "إختر اللغة",
                              style: TextStyle(
                                  // h4 -> welcome
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 0.4,
                                  height: 0.9,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                            SizedBox(
                              height: screenHeight * 0.07,
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
                                      onPressed: () {

                                          Navigator.of(context)
                                              .pushReplacement(ToScreenAnimation(page: Welcome1Screen()));

                                      },
                                      child: const Text(
                                        "العربية",
                                        style: AppTheme.btnwhite,
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
                                                  AppTheme.primary),
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
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacement(ToScreenAnimation(page: WelcomeEnScreen()));
                                      },
                                      child: const Text(
                                        "English",
                                        style: AppTheme.btnprimary,
                                      )),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.15,
                            )
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
