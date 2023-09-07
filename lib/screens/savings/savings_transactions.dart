import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/savings/create_new_savings.dart';
import 'package:govest_app/screens/savings/savings_dashboard.dart';

import '../constants/asset_path.dart';


class SavingsTransactionsScreen extends StatefulWidget {
  const SavingsTransactionsScreen({Key? key}) : super(key: key);

  @override
  State<SavingsTransactionsScreen> createState() => _SavingsTransactionsScreenState();
}

class _SavingsTransactionsScreenState extends State<SavingsTransactionsScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(color: Color(0xff60f248).withOpacity(0.23)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Go",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff0EB51F),
                                          decorationThickness: 0.5.sp,
                                          color: Color(0xff0EB51F),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Savings",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xff2A52E2),
                                            decorationThickness: 0.5.sp,
                                            color: Color(0xff2A52E2)),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Take a bold step to get higher return",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      color: Color(0xff979797)),
                                )
                              ],
                            ),
                            Icon(Icons.add_circle, color: Color(0xff3B5AFB), size: 45.sp,),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Row(
                          children: [
                            Image.asset("assets/images/Big Naira.png"),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Text(
                              "590,000.00",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                decorationThickness: 1.sp,
                                fontSize: 40.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30.sp,
                              right: 30.sp,
                              top: 30.sp,
                              bottom: 10.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>SavingsDashboardScreen())
                );
                },
                                child: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff979797),
                                  ),
                                ),
                              ),
                              Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3B5AFB),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 30.sp,
                            right: 30.sp,
                          ),
                          child: Container(
                            height: 1.sp,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color(0xff979797),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Container(
                  width: 344.sp,
                  height: 232.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Go Target savings",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Colors.white.withOpacity(0.41),
                                    decorationThickness: 1.sp,
                                    fontSize: 16,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white.withOpacity(0.41),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(
                                  "SCHOOL FEE",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Colors.white.withOpacity(0.41),
                                      decorationThickness: 3.sp,
                                      fontSize: 16.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.r),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "35%",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100.sp,
                              width: 135.sp,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TARGET",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff3B5AFB),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "# 590,000",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff3B5AFB)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100.sp,
                              width: 135.sp,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.30),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TARGET",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "# 200,000",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
                child: Container(
                  width: 344.sp,
                  height: 232.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Go Savings",
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        Colors.white.withOpacity(0.41),
                                    decorationThickness: 1.sp,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    color: Colors.white.withOpacity(0.41),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Text(
                                  "EMERGENCY FUND",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          Colors.white.withOpacity(0.41),
                                      decorationThickness: 3.sp,
                                      fontSize: 16.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              height: 40.sp,
                              width: 40.sp,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.r),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "20%",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100.sp,
                              width: 135.sp,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TARGET",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff3B5AFB),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "# 590,000",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff3B5AFB)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 100.sp,
                              width: 135.sp,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.30),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "TARGET",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 15,
                                    ),
                                    Text(
                                      "# 200,000",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.sp, right: 20.sp, bottom: 20.sp),
                child: GestureDetector(
                     onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>CreateNewSavingsScreen())
            );
          },
                  child: Container(
                    width: 344.sp,
                    height: 232.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: Color(0xff3B5AFB),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Go Safe Lock",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              Colors.white.withOpacity(0.41),
                                          decorationThickness: 1.sp,
                                          fontSize: 16,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white.withOpacity(0.41),
                                        ),
                                      ),
                                      SizedBox(width: 5.sp,),
                                      Icon(Icons.lock, color: Colors.white.withOpacity(0.41),)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Text(
                                    "TRUST FUND",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            Colors.white.withOpacity(0.41),
                                        decorationThickness: 3.sp,
                                        fontSize: 16.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Container(
                                height: 40.sp,
                                width: 40.sp,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.r),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "40%",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        color: Color(0xff3B5AFB)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 100.sp,
                                width: 135.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.sp),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TARGET",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff3B5AFB),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "# 590,000",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontFamily: GoVestAssetsPath.govestFont,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff3B5AFB)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 100.sp,
                                width: 135.sp,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.30),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.sp),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TARGET",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "# 200,000",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: GoVestAssetsPath.govestFont,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

