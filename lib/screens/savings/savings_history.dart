import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/savings/gosavings.dart';
import '../constants/asset_path.dart';

class SavingsHistoryScreen extends StatefulWidget {
  const SavingsHistoryScreen({Key? key}) : super(key: key);

  @override
  State<SavingsHistoryScreen> createState() => _SavingsHistoryScreenState();
}

class _SavingsHistoryScreenState extends State<SavingsHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _switchFunction = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 325.sp,
              decoration: BoxDecoration(color: hooloovooBlue),
              child: Padding(
                padding: EdgeInsets.only(
                    right: 20.sp, left: 20.sp, top: 40.sp, bottom: 20.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.close,
                          size: 30.sp,
                          color: whiteText,
                        ),
                        SizedBox(
                          width: 70.sp,
                        ),
                        Text(
                          "Overview",
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w700,
                            color: whiteText,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      "Your Target Savings",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 16.sp,
                          color: whiteText),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Lite Naira.png"),
                        SizedBox(
                          width: 2.sp,
                        ),
                        Text(
                          "50,000",
                          style: TextStyle(
                              fontSize: 32.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: whiteText),
                        ),
                        Text(
                          "/",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: whiteText),
                        ),
                        Text(
                          "300,000",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: whiteText),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 15.sp,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: whiteText),
                      child: Row(
                        children: [
                          Container(
                            height: 15.sp,
                            width: 66.sp,
                            decoration: BoxDecoration(
                                color: springForth,
                                borderRadius: BorderRadius.circular(10.r)),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "42 days Left",
                          style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40.sp,
                          height: 20.sp,
                          decoration: BoxDecoration(
                            color: hooloovooBlue,
                            borderRadius: BorderRadius.circular(8.r),
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
                          width: 40.sp,
                        ),
                        Text(
                          "Auto Save On",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                              color: whiteText),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              GoSavingsScreen()));
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
                          "Save Now",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w700,
                            color: whiteText,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Savings History",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w600,
                            color: spanishGrey),
                      ),
                      Text(
                        "See more",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w500,
                            color: spanishGrey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
                  ),
                  HistoryWidget(),
                  SizedBox(
                    height: 10.sp,
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

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                  color: springForth,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Icon(Icons.trending_down),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Save from wallet",
                  style: TextStyle(
                    color: hooloovooBlue,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "12-Dec-2021",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w500,
                      color: spanishGrey),
                )
              ],
            ),
          ],
        ),
        Text(
          "#50,000.00",
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: GoVestAssetsPath.govestFont,
            fontWeight: FontWeight.w700,
            color: springForth,
          ),
        )
      ],
    );
  }
}
