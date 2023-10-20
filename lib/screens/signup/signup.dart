import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/login/login.dart';
import 'package:govest_app/screens/onboarding/onboarding.dart';
import '../constants/asset_path.dart';
import '../constants/color_constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: hooloovooBlue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.sp, left: 10.sp, right: 10.sp),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                OnboardingScreen()));
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: whiteText,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                        ),
                        children: [
                          TextSpan(
                            text: GoVestText.go,
                            style: TextStyle(color: whiteText),
                          ),
                          TextSpan(
                            text: GoVestText.vestLowercase,
                            style: TextStyle(
                              color: springForth,
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 2.sp,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 225.sp,
              ),
              child: Text(
                GoVestText.hello,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteText),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 170.sp),
              child: Text(
                GoVestText.titan,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteText),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.sp),
                  child: Container(
                    height: 50.sp,
                    width: 160.sp,
                    decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: TextField(
                        decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.sp),
                      labelText: GoVestText.firtName,
                      labelStyle: TextStyle(
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: weatheredStone),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.sp),
                  child: Container(
                    height: 50.sp,
                    width: 160.sp,
                    decoration: BoxDecoration(
                        color: whiteText,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: TextField(
                        decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.sp),
                      labelText: GoVestText.lastName,
                      labelStyle: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: weatheredStone,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            TextField1(phonepath: GoVestText.phoneNumber),
            SizedBox(
              height: 10.sp,
            ),
            TextField1(phonepath: GoVestText.emailAddress),
            SizedBox(
              height: 10.sp,
            ),
            TextField1(phonepath: GoVestText.password),
            SizedBox(
              height: 10.sp,
            ),
            TextField1(phonepath: GoVestText.confirmPassword),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              height: 50.sp,
              width: 340.sp,
              decoration: BoxDecoration(
                  color: whiteText, borderRadius: BorderRadius.circular(5.r)),
              child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.sp),
                      labelText: GoVestText.referral,
                      labelStyle: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: weatheredStone,
                      ),
                      suffixIcon: Icon(
                        Icons.loyalty,
                        color: hooloovooBlue,
                      ))),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.error_outlined,
                  color: whiteText,
                  size: 15.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.sp),
                  child: Text(GoVestText.yourFriend,
                      style: TextStyle(
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          color: whiteText)),
                ),
              ],
            ),
            SizedBox(
              height: 40.sp,
            ),
            SizedBox(
              width: 251.sp,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    height: 1.8.sp,
                  ),
                  children: [
                    TextSpan(
                      text: GoVestText.bySigning,
                      style: TextStyle(color: whiteText),
                    ),
                    TextSpan(
                      text: GoVestText.terms,
                      style: TextStyle(
                        color: blackText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
              },
              child: Container(
                height: 50.sp,
                width: 340.sp,
                decoration: BoxDecoration(
                    color: royalBlue,
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: whiteText)),
                child: Center(
                    child: Text(
                  GoVestText.family,
                  style: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                      color: whiteText),
                )),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen()));
              },
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    height: 1.8.sp,
                  ),
                  children: [
                    TextSpan(
                      text: GoVestText.already,
                      style: TextStyle(color: whiteText),
                    ),
                    TextSpan(
                      text: GoVestText.signIn,
                      style: TextStyle(
                        color: blackText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    required this.phonepath,
  });

  final String phonepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.sp,
      width: 340.sp,
      decoration: BoxDecoration(
          color: whiteText, borderRadius: BorderRadius.circular(5.r)),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.sp),
        labelText: phonepath,
        labelStyle: TextStyle(
          fontFamily: GoVestAssetsPath.govestFont,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: weatheredStone,
        ),
      )),
    );
  }
}
