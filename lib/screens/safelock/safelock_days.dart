import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/safelock/safelock_preview.dart';

import '../constants/asset_path.dart';


class SafelockDaysScreen extends StatefulWidget {
  const SafelockDaysScreen({Key? key}) : super(key: key);

  @override
  State<SafelockDaysScreen> createState() => _SafelockDaysScreenState();
}

class _SafelockDaysScreenState extends State<SafelockDaysScreen> {
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
                  Text(
                    GoVestText.safelockDays,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w700,
                      color: hooloovooBlue,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                GoVestText.createSafelock,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    color: blackText),
                    textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.howMuch,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: spanishGrey,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp), 
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackText, 
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: GoVestText.twoHundredKay,
                    prefixIcon: Image.asset(
                        GoVestAssetsPath.bigNaira, height: 10.sp,), // Placeholder text
                    labelStyle: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                        color: blackText),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle, color: springForth,),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    GoVestText.type,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w500,
                        color: spanishGrey),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.setTitle,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: spanishGrey,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackText,
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: GoVestText.emergencyFund,
                    labelStyle: TextStyle(color: blackText, fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.paybackDate,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: spanishGrey,
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                GoVestText.longer,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w500,
                  color: spanishGrey,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackText,
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: spanishGrey,
                      size: 30.sp,
                    ),
                    labelText: GoVestText.october,
                    labelStyle: TextStyle(
                        color: blackText,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 7.sp,
              ),
              Row(
                children: [
                  Icon(Icons.trending_up, color: springForth,),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    GoVestText.yourReturn,
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w400,
                        color: blackText),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.selectSource,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: spanishGrey),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackText,
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: GoVestText.wallet,
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: spanishGrey,
                      size: 30.sp,
                    ),
                    //
                  ),
                ),
              ),
              SizedBox(
                height: 40.sp,
              ),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>SafelockPreviewScreen())
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
                      GoVestText.previewGoSafe,
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
