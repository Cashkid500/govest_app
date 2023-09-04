import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/dashboard/dashboard.dart';


class InvestmentPackageGridScreen extends StatefulWidget {
  const InvestmentPackageGridScreen({Key? key}) : super(key: key);

  @override
  State<InvestmentPackageGridScreen> createState() => _InvestmentPackageGridScreenState();
}

class _InvestmentPackageGridScreenState extends State<InvestmentPackageGridScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sp, top: 50.sp),
            child: Icon(Icons.close, color: Color(0xffffffff),),
          ),
          SizedBox(height: 50.sp,),
          Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Ganni West",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Image.asset("assets/images/Profile.png", height: 80.sp,),
                ],
              ),
          ),
          SizedBox(
              height: 50.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Text("Go",
                  style:TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700
                  ) ,
                  ),
                  SizedBox(width: 10.sp,),
                  Text("Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Icon(Icons.person, color: Colors.white,),
                  SizedBox(width: 10.sp,),
                  Text("Profile account",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Icon(Icons.receipt_long, color: Colors.white,),
                  SizedBox(width: 10.sp,),
                  Text("Transaction History",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet, color: Colors.white,),
                  SizedBox(width: 10.sp,),
                  Text("Bank & Debit Card",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Image.asset('assets/images/KYC.png'),
                  SizedBox(width: 10.sp,),
                  Text("Setup KYC",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Icon(Icons.info, color: Color(0xffffffff),),
                  SizedBox(width: 10.sp,),
                  Text("About GoVest",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Row(
                children: [
                  Icon(Icons.headset_mic, color: Colors.white,),
                  SizedBox(width: 10.sp,),
                  Text("Customer Center",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                  ),),
                ],
              ),
            ),
            SizedBox(height: 60.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20.sp),
                  child: GestureDetector(
                    onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>DashboardScreen())
            );
          },
                    child: Container(
                      height: 68.sp,
                      width: 149.sp,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Log out",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                color: Color(0xff3B5AFB),
                              ),),
                              Image.asset("assets/images/Logout.png"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
        ]
      ),
    );
  }
}
