import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/onboarding/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(), // Use SplashScreen as the initial screen
          );
        });
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 3 seconds and then navigate to the next screen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const
                OnboardingScreen()), // Replace NextScreen with the screen you want to navigate to
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: whiteText,
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                ),
                children: [
                  TextSpan(
                    text: GoVestText.go,
                    style: TextStyle(color: veteranBlue),
                  ),
                  TextSpan(
                    text: GoVestText.vest,
                    style: TextStyle(
                      color: springForth,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
