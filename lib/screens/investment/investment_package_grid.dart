import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/dashboard/dashboard.dart';
import 'package:govest_app/screens/login/login.dart';
import 'package:govest_app/screens/profile/add_bank.dart';
import 'package:govest_app/screens/profile/profile_account.dart';
import 'package:govest_app/screens/profile/setup_kyc.dart';
import 'package:govest_app/screens/profile/transaction_history.dart';

class InvestmentPackageGridScreen extends StatefulWidget {
  const InvestmentPackageGridScreen({Key? key}) : super(key: key);

  @override
  State<InvestmentPackageGridScreen> createState() =>
      _InvestmentPackageGridScreenState();
}

class _InvestmentPackageGridScreenState
    extends State<InvestmentPackageGridScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: hooloovooBlue,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.sp, top: 50.sp),
                child: Icon(
                  Icons.close,
                  color: whiteText,
                ),
              ),
              SizedBox(
                height: 50.sp,
              ),
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
                          GoVestText.hello3,
                          style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          GoVestText.gW,
                          style: TextStyle(
                              color: whiteText,
                              fontSize: 25.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Image.asset(
                      GoVestAssetsPath.profile,
                      height: 80.sp,
                    ),
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
                    Text(
                      GoVestText.go,
                      style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const
                                DashboardScreen()));
                      },
                      child: Text(
                        GoVestText.dashboard,
                        style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                    Icon(
                      Icons.person,
                      color: whiteText,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const
                                ProfileAccountScreen()));
                      },
                      child: Text(
                        GoVestText.profileAccount,
                        style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                    Icon(
                      Icons.receipt_long,
                      color: whiteText,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const
                                TransactionHistoryScreen()));
                      },
                      child: Text(
                        GoVestText.transactionHistory,
                        style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                    Icon(
                      Icons.account_balance_wallet,
                      color: whiteText,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const
                                AddBankScreen()));
                      },
                      child: Text(
                        GoVestText.bankDebitCard,
                        style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                    Image.asset(GoVestAssetsPath.kyc),
                    SizedBox(
                      width: 10.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const
                                SetupKYCScreen()));
                      },
                      child: Text(
                        GoVestText.setupKYC,
                        style: TextStyle(
                          color: whiteText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
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
                    Icon(
                      Icons.info,
                      color: whiteText,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      GoVestText.aboutGoVest,
                      style: TextStyle(
                        color: whiteText,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
                    Icon(
                      Icons.headset_mic,
                      color: whiteText,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Text(
                      GoVestText.customerCenter,
                      style: TextStyle(
                        color: whiteText,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.sp),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>const LoginScreen()));
                      },
                      child: Container(
                        height: 68.sp,
                        width: 149.sp,
                        decoration: BoxDecoration(
                          color: whiteText,
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              GoVestText.logout,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: hooloovooBlue,
                              ),
                            ),
                            Image.asset(GoVestAssetsPath.logout),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
