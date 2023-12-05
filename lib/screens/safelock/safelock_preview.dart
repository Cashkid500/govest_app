import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/savings_history.dart';


class SafelockPreviewScreen extends StatefulWidget {
  const SafelockPreviewScreen({Key? key}) : super(key: key);

  @override
  State<SafelockPreviewScreen> createState() => _SafelockPreviewScreenState();
}

class _SafelockPreviewScreenState extends State<SafelockPreviewScreen> {
  bool _switchValue = false;
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
         child: Padding(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp, top: 40.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.close, color: hooloovooBlue, size: 30.sp),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40.sp,
                    height: 40.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: hooloovooBlue.withOpacity(0.31),
                    ),
                    child: Icon(Icons.lock, color: hooloovooBlue, size: 20.sp),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        GoVestText.preview,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w700,
                          color: hooloovooBlue,
                        ),
                      ),
                      Text(
                        GoVestText.schoolFund,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w500,
                          color: spanishGrey,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20.sp,),
              Text(
                GoVestText.amet2,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 12.sp,
                    color: blackText),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 325.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: hooloovooBlue),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        GoVestText.fundReturn,
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Container(
                        height: 2.sp,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: whiteText.withOpacity(0.4)),
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GoVestText.lockFund,
                            style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            GoVestText.returnRate,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w500,
                                color: whiteText),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(GoVestAssetsPath.naira),
                              SizedBox(
                                width: 5.sp,
                              ),
                              Text(
                                GoVestText.twoHundredKay2,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w700,
                                    color: whiteText),
                              ),
                            ],
                          ),
                          Text(
                            GoVestText.halfPercent,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: whiteText),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 2.sp,
                        decoration:
                            BoxDecoration(color: whiteText.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GoVestText.amountReturn,
                            style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            GoVestText.paybackDate,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w500,
                                color: whiteText),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(GoVestAssetsPath.naira),
                              SizedBox(
                                width: 5.sp,
                              ),
                              Text(
                                GoVestText.twoZeroFive,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w700,
                                    color: whiteText),
                              ),
                            ],
                          ),
                          Text(
                            GoVestText.october2,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: whiteText),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 2.sp,
                        decoration:
                            BoxDecoration(color: whiteText.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GoVestText.lockDuration,
                            style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            GoVestText.paybackInto,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w500,
                                color: whiteText),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GoVestText.fifteenDays,
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: whiteText),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: whiteText,
                                borderRadius: BorderRadius.circular(50.r)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  GoVestText.pin,
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w700,
                                      color: hooloovooBlue),
                                ),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Image.asset(GoVestAssetsPath.playback),
                                SizedBox(
                                  width: 5.sp,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      GoVestText.authorize,
                      style: TextStyle(
                        color: blackText,
                        fontSize: 10.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: spanishGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchFunction,
                      onChanged: (value) {
                        setState(() {
                          _switchFunction = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      GoVestText.acknowledge,
                      style: TextStyle(
                        color: blackText,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.sp,
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>const SavingsHistoryScreen())
            );
          },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: hooloovooBlue,
                  ),
                  child: Center(
                    child: Text(
                      GoVestText.goSafeLock2,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w700,
                        color: whiteText,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
