import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/investment/investment_package_grid.dart';
import 'package:govest_app/screens/signup/signup.dart';
import '../constants/asset_path.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: hooloovooBlue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                                  SignupScreen()));
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
                left: 20.sp,
              ),
              child: Text(
                GoVestText.welcomeBack,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: whiteText),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text(
                GoVestText.login,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: whiteText),
              ),
            ),
            SizedBox(height: 20.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Container(
                height: 50.sp,
                width: 320.sp,
                  decoration: BoxDecoration(
              color: whiteText,
              borderRadius: BorderRadius.circular(5.r)),
                  child: TextField(
              decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.sp),
                    labelText: GoVestText.emailAddress,
                    labelStyle: TextStyle(
              fontFamily: GoVestAssetsPath.govestFont,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: weatheredStone,
                    ),
                  )),
              ),
            ),
            SizedBox(height: 20.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Container(
                height: 50.sp,
                width: 320.sp,
                  decoration: BoxDecoration(
              color: whiteText,
              borderRadius: BorderRadius.circular(5.r)),
                  child: TextField(
              decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.sp),
                    labelText: GoVestText.password,
                    labelStyle: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: weatheredStone,
                    ),
                    suffixIcon: Icon(Icons.visibility_off, color: hooloovooBlue,)
                  )),
              ),
            ),
            SizedBox(height: 5.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text(GoVestText.forgotPassword, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w500, color: blackText),),
            ),
            SizedBox(height: 320.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) =>InvestmentPackageGridScreen())
              );
            },
                child: Container(
                  height: 50.sp,
                    width: 320.sp,
                      decoration: BoxDecoration(
                  color: whiteText,
                  borderRadius: BorderRadius.circular(5.r)),
                  child: Center(child: Text(GoVestText.signMeIn, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w700, color: hooloovooBlue),)),
                ),
              ),
            ),
            SizedBox(height: 20.sp,),
                Center(
                  child: GestureDetector(
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => SignupScreen()));
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
                                  text: GoVestText.new2GoVest,
                                  style: TextStyle(color: whiteText),
                                ),
                                TextSpan(
                                  text: GoVestText.signUp,
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
                )
          ]
        ),
      ),
    );
  }
}
