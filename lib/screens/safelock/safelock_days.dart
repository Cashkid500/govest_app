import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  Icon(Icons.close, color: Color(0xff3B5AFB), size: 30.sp),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff3B5AFB).withOpacity(0.31),
                    ),
                    child: Icon(Icons.lock, color: Color(0xff3B5AFB), size: 20.sp),
                  ),
                  SizedBox(
                    width: 20.sp,
                  ),
                  Text(
                    "SafeLock for 10-30 Days",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3B5AFB),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Create a safelock for 10-30 days with a return close to 6%. The longer the payback date, the higher your return.",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                    textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "How much ?",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp), 
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black, 
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '200,000.00',
                    prefixIcon: Image.asset(
                        "assets/images/Big Naira.png", height: 10.sp,), // Placeholder text
                    labelStyle: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                        color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle, color: Color(0xff0EB51F),),
                  SizedBox(
                    width: 5.sp,
                  ),
                  Text(
                    "Type in amount you would like to lock",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797)),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Set Title",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Emergency fund',
                    labelStyle: TextStyle(color: Color(0xff000000), fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Payback Date",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(height: 10.sp,),
              Text(
                "The longer it is, the higher your return.",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff979797),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: Color(0xff979797),
                      size: 30.sp,
                    ),
                    labelText: '11 October 2021',
                    labelStyle: TextStyle(
                        color: Color(0xff000000),
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
                  Icon(Icons.trending_up, color: Color(0xff0EB51F),),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "Your return is 0.5 % at 10 days.",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Select source of fund",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: Color(0xff979797)),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Wallet - NGN 200,000',
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Color(0xff979797),
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
                    color: Color(0xff3B5AFB),
                  ),
                  child: Center(
                    child: Text(
                      "Preview GoSafe",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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
