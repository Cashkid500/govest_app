import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/referral/referral.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

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
              decoration:
                  BoxDecoration(color: Color(0xff60f248).withOpacity(0.23)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/Profile.png"),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Hello",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              ", Ganni West",
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.settings, color: Color(0xff3B5AFB),)
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DashboardContainer(
                              walletName: "GOWALLET",
                              accNo: "*******5645",
                              amount: "30,250.00",
                              name: "Ganni West",
                              bank: "Wema Bank",
                              imagepath: "assets/images/Plus.png"),
                          SizedBox(
                            width: 10.sp,
                          ),
                          DashboardContainer(
                            walletName: "GOWALLET",
                            accNo: "*******5645",
                            amount: "30,250.00",
                            name: "Ganni West",
                            bank: "Wema Bank",
                            imagepath: "assets/images/Plus.png",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150.sp,
                  height: 151.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff0EB51F),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Investment.png"),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(
                          "INVESTMENT",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "Transaction fees to earn for every trade from a referral.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.sp,
                ),
                Container(
                  width: 150.sp,
                  height: 151.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Savings.png"),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "SAVINGS",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "Transaction fees to earn for every trade from a referral.",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.sp,),
            Padding(padding: EdgeInsets.only(left: 20.sp),
              child: Text(
                "REFER & EARN",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    color: Color(0xff979797)),
              ),
            ),
            SizedBox(height: 5.sp,),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff60f248).withOpacity(0.23),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Earn 10% commission when\na friend joins with your code",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff000000),
                                ),
                              ),
                              SizedBox(height: 15.sp,),
                              Text(
                                "REFER NOW",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0EB51F)),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/Refer.png')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 5.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "What’s up today?",
                    style: TextStyle(
                      color: Color(0xff979797),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: Color(0xff979797),
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 10.sp, bottom: 20.sp),
              child: GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>ReferralScreen())
                );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 20.sp, top: 20.sp, bottom: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/Withdraw.png'),
                        SizedBox(width: 10.sp,),
                        Padding(
                          padding: EdgeInsets.only(right: 50.sp),
                          child: Column(
                            children: [
                              Text(
                                "Wallet withdraw",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                "5 May 2021 at 12:30 AM",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/Naira.png'),
                            SizedBox(width: 2.sp,),
                            Text(
                              "2,000",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Poppins',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({
    super.key,
    required this.walletName,
    required this.accNo,
    required this.amount,
    required this.name,
    required this.bank,
    required this.imagepath,
  });

  final String walletName;
  final String accNo;
  final String amount;
  final String name;
  final String bank;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205.sp,
      width: 328.sp,
      decoration: BoxDecoration(
        color: Color(0xff2A52E2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  walletName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  accNo,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  amount,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 24.sp,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 205.sp,
            width: 46.sp,
            decoration: BoxDecoration(
                color: Color(0xff0C35C6),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      bank,
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Image.asset(imagepath)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
