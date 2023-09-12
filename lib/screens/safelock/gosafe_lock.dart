import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/safelock/safelock_days.dart';
import '../constants/asset_path.dart';
import '../savings/savings_dashboard.dart';


class GoSafelockScreen extends StatefulWidget {
  const GoSafelockScreen({Key? key}) : super(key: key);

  @override
  State<GoSafelockScreen> createState() => _GoSafelockScreenState();
}

class _GoSafelockScreenState extends State<GoSafelockScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String ReturnDays = "10 - 30 DAYS";
    String ReturnPerAnnum = "upto 6% per annum";
    String ReturnDays2 = "30 - 60 DAYS";
    String ReturnPerAnnum2 = "upto 10% per annum";
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp, top: 40.sp, bottom: 20.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.close, color: hooloovooBlue, size: 30.sp,),
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
                    GoVestText.gosafeLock,
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
                GoVestText.amet2,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w400,
                  color: blackText,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SafelockContainer1(
                      ReturnDays: ReturnDays, ReturnPerAnnum: ReturnPerAnnum),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer2(
                      ReturnDays2: ReturnDays2,
                      ReturnPerAnnum2: ReturnPerAnnum2),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  SafelockContainer2(
                      ReturnDays2: ReturnDays2,
                      ReturnPerAnnum2: ReturnPerAnnum2),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer1(
                      ReturnDays: ReturnDays, ReturnPerAnnum: ReturnPerAnnum)
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                children: [
                  SafelockContainer1(
                      ReturnDays: GoVestText.days,
                      ReturnPerAnnum: ReturnPerAnnum),
                  SizedBox(
                    width: 10.sp,
                  ),
                  SafelockContainer2(
                      ReturnDays2: GoVestText.days2,
                      ReturnPerAnnum2: ReturnPerAnnum2)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SafelockContainer2 extends StatelessWidget {
  const SafelockContainer2({
    super.key,
    required this.ReturnDays2,
    required this.ReturnPerAnnum2,
  });

  final String ReturnDays2;
  final String ReturnPerAnnum2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.sp,
      width: 155.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: hooloovooBlue),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 26.sp,
              width: 26.sp,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  color: whiteText.withOpacity(0.3)),
              child: Icon(Icons.lock, color: whiteText, size: 15.sp,),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Text(
              ReturnDays2,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: whiteText),
            ),
            SizedBox(
              height: 10.sp,
            ),
            SizedBox(
              width: 130.sp,
              child: Text(
                GoVestText.lockFunds,
                style: TextStyle(
                  fontSize: 10.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w400,
                  color: whiteText,
                ),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 58.sp,
                  child: Text(
                    ReturnPerAnnum2,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteText,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SafelockContainer1 extends StatelessWidget {
  const SafelockContainer1({
    super.key,
    required this.ReturnDays,
    required this.ReturnPerAnnum,
  });

  final String ReturnDays;
  final String ReturnPerAnnum;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>SafelockDaysScreen())
            );
          },
      child: Container(
        height: 172.sp,
        width: 155.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: springForth,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 26.sp,
                width: 26.sp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: whiteText.withOpacity(0.3)),
                child: Icon(Icons.lock, color: whiteText, size: 15.sp,),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Text(
                ReturnDays,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    color: whiteText),
              ),
              SizedBox(
                height: 10.sp,
              ),
              SizedBox(
                width: 130.sp,
                child: Text(
                  GoVestText.lockFunds,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w400,
                    color: whiteText,
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 58.sp,
                    child: Text(
                      ReturnPerAnnum,
                      style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: whiteText,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}