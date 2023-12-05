import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/savings_dashboard.dart';


class SafelockScreen extends StatefulWidget {
  const SafelockScreen({Key? key}) : super(key: key);

  @override
  State<SafelockScreen> createState() => _SafelockScreenState();
}

class _SafelockScreenState extends State<SafelockScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 146.sp,
          decoration: BoxDecoration(
            color: whiteText,
          ),
          // Content of the bottom sheet
          child: Padding(
            padding: EdgeInsets.all(17.sp),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Container(
                  height: 47.sp,
                  width: 266.sp,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: springForth,
                  ),
                  borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10.sp),
                      ),
                      SizedBox(width: 10.sp,),
                      Image.asset(GoVestAssetsPath.wallet),
                      SizedBox(width: 10.sp,),
                      Text(
                        GoVestText.wallet,
                        style: TextStyle(
                            color: springForth,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp),
                      ),
                    ],
                  ),
                  ),
                  onTap: () {
                    // Handles Option 1
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Container(
                      height: 47.sp,
                      width: 266.sp,
                      decoration: BoxDecoration(
                        border: Border.all(
                      color: hooloovooBlue,
                    ),
                    borderRadius: BorderRadius.circular(5.r)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 10.sp,),
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Image(
                                          image: AssetImage(
                                              GoVestAssetsPath.card))
                                      .image),
                            ),
                          ),
                          SizedBox(width: 10.sp,),
                          Text(
                            GoVestText.paystack,
                            style: TextStyle(
                                color: hooloovooBlue,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                fontSize: 20.sp),
                          ),
                        ],
                      ),
                    ),
                  onTap: () {
                    // Handles Option 2
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17.sp, top: 35.sp, bottom: 17.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close, color: hooloovooBlue,),
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
                    child: Icon(Icons.lock, color: hooloovooBlue,),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Text(
                    GoVestText.cashew,
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoVestAssetsPath.govestFont,
                        color: hooloovooBlue),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>const SavingsDashboardScreen())
            );
          },
                child: Container(
                  width: 320.sp,
                  height: 158.sp,
                  decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(7.r)),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 250.sp),
                          child: Icon(Icons.close, color: whiteText,),
                        ),
                        Text(
                          GoVestText.leadway,
                          style: TextStyle(
                              fontSize: 10.sp,
                              height: 2.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: whiteText),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1.sp,
                          decoration: BoxDecoration(
                            color: spanishGrey,
                          ),
                        ),
                        SizedBox(height: 20.sp,),
                        Text(
                          GoVestText.note,
                          style: TextStyle(
                            fontSize: 10.sp,
                            height: 2.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w700,
                            color: whiteText,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.unit,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoVestAssetsPath.govestFont,
                  color: spanishGrey,
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                GoVestText.five,
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoVestAssetsPath.govestFont,
                  color: blackText,
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1.sp,
                decoration: BoxDecoration(
                  color: blackText,
                ),
              ),
              SizedBox(height: 5.sp,),
              Row(
                children: [
                  Icon(Icons.check_circle, color: springForth),
                  SizedBox(width: 10.sp,),
                  Text(
                    GoVestText.numberOfUnits,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: blackText,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                height: 1.sp,
                width: MediaQuery.of(context).size.width,
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
                    GoVestText.totalInvestment,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w500,
                      color: spanishGrey,
                    ),
                  ),
                  Text(
                    GoVestText.totalInvestmentPlusReturn,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w500,
                      color: spanishGrey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    GoVestText.fiveHundredKay,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w700,
                        color: blackText),
                  ),
                  Text(
                    GoVestText.sixFifty,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w700,
                        color: blackText),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 1.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: spanishGrey,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                GoVestText.selectSource,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: spanishGrey,
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    GoVestText.wallet,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoVestAssetsPath.govestFont,
                        color: blackText),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.sp),
                    child: Icon(Icons.expand_more, color: greyText),
                  ),
                ],
              ),
              SizedBox(height: 5.sp,),
              Container(
                height: 1.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: spanishGrey,
                ),
              ),
              SizedBox(height: 20.sp,),
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
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              GestureDetector(
                onTap: () {
                  _showBottomSheet(context);
                },
                child: Container(
                  width: 329.sp,
                  height: 50.sp,
                  decoration: BoxDecoration(
                    color: hooloovooBlue,
                    borderRadius: BorderRadius.circular(10.r)
                  ),
                  child: Center(
                    child: Text(
                      GoVestText.buyInvestment,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 16.sp,
                          color: whiteText),
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
