import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/investment/investment_package.dart';


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
                        fontSize: 25.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Go",
                          style: TextStyle(color: Color(0xff2A52E2)),
                        ),
                        TextSpan(
                          text: "VEST",
                          style: TextStyle(
                            color: Color(0xff0EB51F),
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
                  color: Color(0xff2A52E2),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
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
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "Commission",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Image.asset("assets/images/Commission.png"),
                        ],
                      ),
                      // Image.asset('assets/images/Graph.png'),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Text(
                        "Earn commission for every transaction made by the person you refer.",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
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
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
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
                    color: Color(0xff60F248).withOpacity(0.2),
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
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        height: 112.sp,
                        width: 85.sp,
                        decoration: BoxDecoration(
                        color: Color(0xff3B5AFB)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.content_copy_rounded, color: Color(0xffffffff), size: 40.sp,),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Text(
                              "Tap to Copy",
                              style: TextStyle(
                                color: Colors.white,
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
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 142.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff3B5AFB).withOpacity(0.8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign-Ups",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff979797)),
                            ),
                            Text(
                              "Sign-Ups with Trading",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                color: Color(0xff979797),
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
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 12,
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
                            color: Color(0xff979797),
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
                                color: Color(0xff979797),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Text(
                              "Bonus per referral",
                              style: TextStyle(
                                color: Color(0xff979797),
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
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
                                Image.asset("assets/images/Naira.png", color: Color(0xff000000),),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "3,500.00",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/images/Naira.png', color: Color(0xff000000),),
                                SizedBox(
                                  width: 5.sp,
                                ),
                                Text(
                                  "500.00",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
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
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 142.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Color(0xff3B5AFB).withOpacity(0.8)),
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
                          fontFamily: 'Poppins',
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
