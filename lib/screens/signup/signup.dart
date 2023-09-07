import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/login/login.dart';

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
    String phonepath = 'Phone number';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.sp, left: 10.sp, right: 10.sp),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: whiteText,
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
                            text: "Go",
                            style: TextStyle(color: whiteText),
                          ),
                          TextSpan(
                            text: "Vest",
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
                "Hello there,",
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
                "Become a Titan",
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
                      labelText: 'First name',
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
                      labelText: 'Last name',
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
            TextField1(phonepath: 'Phone number'),
            SizedBox(height: 10.sp,),
            TextField1(phonepath: 'Email address'),
            SizedBox(height: 10.sp,),
            TextField1(phonepath: 'Password'),
            SizedBox(height: 10.sp,),
            TextField1(phonepath: 'Confirm password'),
            SizedBox(height: 10.sp,),
            Container(
              height: 50.sp,
              width: 340.sp,
            decoration: BoxDecoration(
            color: whiteText,
            borderRadius: BorderRadius.circular(5.r)),
        child: TextField(
          decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.sp),
          labelText: 'Referral code (optional)',
          labelStyle: TextStyle(
            fontFamily: GoVestAssetsPath.govestFont,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: weatheredStone,
          ),
          suffixIcon: Icon(Icons.loyalty, color: hooloovooBlue,)
        )),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.error_outlined, color: whiteText, size: 15.sp,),
                Padding(
                  padding: EdgeInsets.only(right: 30.sp),
                  child: Text(
                    "Your friend get rewarded when you use their referal code.", style: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont, fontSize: 10.sp, fontWeight: FontWeight.w400, color: whiteText
                    )
                  ),
                ),
               ],
            ),
            SizedBox(height: 40.sp,),
                Padding(
                  padding: EdgeInsets.only(left: 60.sp, right: 40.sp),
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
                              text: "By signing up, you agree to the ",
                              style: TextStyle(color: whiteText),
                            ),
                            TextSpan(
                              text: "Terms of Use & Privacy Policy",
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
                SizedBox(height: 20.sp,),
                GestureDetector(
                   onTap: () {
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context) =>LoginScreen())
              );
            },
                  child: Container(
                          height: 50.sp,
                          width: 340.sp,
                          decoration: BoxDecoration(
                          color: royalBlue,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: whiteText)),
                          child: Center(child: Text("Become A Family", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w800, color: whiteText),)),
                  ),
                ),
                SizedBox(height: 20.sp,),
                RichText(
                  text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            height: 1.8.sp,
                          ),
                          children: [
                            TextSpan(
                              text: "Already a family? ",
                              style: TextStyle(color: whiteText),
                            ),
                            TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                color: blackText,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
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
          color: whiteText,
          borderRadius: BorderRadius.circular(5.r)),
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
