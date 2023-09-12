import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
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
                  ),
                  Image.asset(GoVestAssetsPath.profile, height: 50.sp,),
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
                                GoVestText.tenPercent,
                                style: TextStyle(
                                  fontSize: 48.sp,
                                  fontWeight: FontWeight.w700,
                                  color: whiteText,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                ),
                              ),
                              Text(
                                GoVestText.commission2,
                                style: TextStyle(
                                  color: whiteText,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(GoVestAssetsPath.commission),
                        ],
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Text(
                        GoVestText.transactionCommission,
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
                  GoVestText.referralCode,
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
                          GoVestText.frgdt,
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
                              GoVestText.tapToCopy,
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
                              GoVestText.signups,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w400,
                                  color: spanishGrey),
                            ),
                            Text(
                              GoVestText.trading,
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
                              GoVestText.ten,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                              ),
                            ),
                            Text(
                              GoVestText.seven,
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
                              GoVestText.totalBonus,
                              style: TextStyle(
                                color: spanishGrey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                              ),
                            ),
                            Text(
                              GoVestText.referralBonus,
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
                                Image.asset(GoVestAssetsPath.naira, color: blackText,),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  GoVestText.threeFive,
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
                                Image.asset(GoVestAssetsPath.naira, color: blackText,),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  GoVestText.fiveHundred,
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
                      Image.asset(GoVestAssetsPath.upload),
                      SizedBox(height: 20.sp,),
                      Text(
                        GoVestText.shareLink,
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
