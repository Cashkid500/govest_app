import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/investment/investment_package.dart';
import '../constants/asset_path.dart';


class ReferralScreen extends StatefulWidget {
  const ReferralScreen({Key? key}) : super(key: key);

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 25.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Go",
                          style: TextStyle(color: veteranBlue),
                        ),
                        TextSpan(
                          text: "VEST",
                          style: TextStyle(
                            color: springForth,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/Profile.png", height: 50.sp,),
                ],
              ),
              SizedBox(height: 20.sp,),
              Container(
                decoration: BoxDecoration(
                  color: veteranBlue,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "10% ",
                                style: TextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w700,
                                  color: whiteText,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                ),
                              ),
                              Text(
                                "Commission",
                                style: TextStyle(
                                  color: whiteText,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Image.asset("assets/images/Commission.png"),
                        ],
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Text(
                        "Earn commission for every transaction made by the person you refer.",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: whiteText),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              Padding(
                padding: EdgeInsets.only(right: 120.sp),
                child: Text(
                  "Copy your referral code",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: GoVestAssetsPath.govestFont),
                ),
              ),
              SizedBox(
                height: 15.sp,
              ),
              GestureDetector(
                  onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>InvestmentPackageScreen())
            );
          },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 112.sp,
                  decoration: BoxDecoration(
                    color: biopunk.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 60.sp),
                        child: Text(
                          "GO-12FRGDT",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoVestAssetsPath.govestFont,
                          ),
                        ),
                      ),
                      Container(
                        height: 112.sp,
                        width: 85.sp,
                        decoration: BoxDecoration(
                        color: hooloovooBlue),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.content_copy_rounded, color: whiteText, size: 40.sp,),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              "Tap to Copy",
                              style: TextStyle(
                                color: whiteText,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Container(
                  height: 150.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: hooloovooBlue.withOpacity(0.8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign-Ups",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w400,
                                  color: spanishGrey),
                            ),
                            Text(
                              "Sign-Ups with Trading",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: spanishGrey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                              ),
                            ),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 2.sp,
                          decoration: BoxDecoration(
                            color: spanishGrey,
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Bonus Earned",
                              style: TextStyle(
                                color: spanishGrey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                              ),
                            ),
                            Text(
                              "Bonus per referral",
                              style: TextStyle(
                                color: spanishGrey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 11.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Naira.png", color: blackText,),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "3,500.00",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w700,
                                      color: blackText),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/Naira.png', color: blackText,),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "500.00",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w700,
                                      color: blackText),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.h),
                child: Container(
                  height: 142.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.r),
                    border: Border.all(color: hooloovooBlue.withOpacity(0.8)),
                  ),
                  child: Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Upload.png"),
                      SizedBox(height: 20.sp,),
                      Text(
                        "Share Link",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                        ),
                      ),
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
