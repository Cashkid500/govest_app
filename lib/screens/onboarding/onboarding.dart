import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/login/login.dart';
import 'package:govest_app/screens/signup/signup.dart';
import '../constants/asset_path.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.sp, right: 20.sp),
                child: GestureDetector(
                onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => SignupScreen()));
                    },
                child: Text(GoVestText.skip, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w500, color: hooloovooBlue),)),
              ),
              SizedBox(height: 20.sp,),
              Center(child: Image.asset(GoVestAssetsPath.pageView1)),
              SizedBox(height: 30.sp,),
              Text(GoVestText.onboardingText, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 24.sp, fontWeight: FontWeight.w600, color: hooloovooBlue),
              textAlign: TextAlign.center,),
              SizedBox(height: 90.sp,),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignupScreen()));
                  },
                  child: Container(
                    height: 54.sp,
                    width: 330.sp,
                    decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(82.r),
                    ),
                    child: Center(
                      child: Text(GoVestText.getStarted, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700, color: whiteText),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
      
          // Onboarding 2
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
            color: hooloovooBlue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.sp, right: 20.sp),
                  child: GestureDetector(
                  onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => SignupScreen()));
                      },
                  child: Text(GoVestText.skip, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w500, color: whiteText),)),
                ),
                SizedBox(height: 20.sp,),
                Center(child: Image.asset(GoVestAssetsPath.pageView2)),
                SizedBox(height: 30.sp,),
                Text(GoVestText.onboardingText2, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 24.sp, fontWeight: FontWeight.w700, color: whiteText),
                textAlign: TextAlign.center,),
                SizedBox(height: 90.sp,),
                Center(
                  child: Container(
                    height: 54.sp,
                    width: 180.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(82.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(GoVestText.next, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700, color: hooloovooBlue),
                          ),
                        ),
                        SizedBox(width: 5.sp,),
                        Icon(Icons.arrow_right_alt, color: hooloovooBlue,)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
      
          // Onboarding 3
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.sp, right: 20.sp),
                child: GestureDetector(
                onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                    },
                child: Text(GoVestText.skip, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w500, color: hooloovooBlue),)),
              ),
              SizedBox(height: 20.sp,),
              Center(child: Image.asset(GoVestAssetsPath.pageView3)),
              SizedBox(height: 30.sp,),
              Text(GoVestText.onboardingText, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 24.sp, fontWeight: FontWeight.w600, color: hooloovooBlue),
              textAlign: TextAlign.center,),
              SizedBox(height: 90.sp,),
              Center(
                child: GestureDetector(
                  onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>SignupScreen())
            );
          },
                  child: Container(
                    height: 54.sp,
                    width: 330.sp,
                    decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(82.r),
                    ),
                    child: Center(
                      child: Text(GoVestText.create, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700, color: whiteText),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
