import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/referral/referral.dart';
import '../constants/asset_path.dart';


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
                  BoxDecoration(color: biopunk.withOpacity(0.23)),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
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
                            Image.asset(GoVestAssetsPath.profile),
                            Padding(
                              padding: EdgeInsets.only(left: 10.sp),
                              child: Text(
                                "Hello",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Text(
                              ", Ganni West",
                              style: TextStyle(
                                fontSize: 19.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.settings, color: hooloovooBlue,)
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
                              imagepath: GoVestAssetsPath.plus),
                          SizedBox(
                            width: 10.sp,
                          ),
                          DashboardContainer(
                            walletName: "GOWALLET",
                            accNo: "*******5645",
                            amount: "30,250.00",
                            name: "Ganni West",
                            bank: "Wema Bank",
                            imagepath: GoVestAssetsPath.plus,
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
                    color: springForth,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(GoVestAssetsPath.investment),
                        SizedBox(
                          height: 5.sp,
                        ),
                        Text(
                          "INVESTMENT",
                          style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "Transaction fees to earn for every trade from a referral.",
                          style: TextStyle(
                            color: whiteText,
                            fontSize: 10.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
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
                    color: hooloovooBlue,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(GoVestAssetsPath.savings),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "SAVINGS",
                          style: TextStyle(
                              color: whiteText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Text(
                          "Transaction fees to earn for every trade from a referral.",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: whiteText,
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
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 14.sp,
                    color: spanishGrey),
              ),
            ),
            SizedBox(height: 5.sp,),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Container(
                decoration: BoxDecoration(
                  color: biopunk.withOpacity(0.23),
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
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w700,
                                  color: blackText,
                                ),
                              ),
                              SizedBox(height: 15.sp,),
                              Text(
                                "REFER NOW",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w700,
                                    color: springForth),
                              ),
                            ],
                          ),
                          Image.asset(GoVestAssetsPath.refer)
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
                      color: spanishGrey,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                      color: spanishGrey,
                      fontFamily: GoVestAssetsPath.govestFont,
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
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.sp, right: 20.sp, top: 20.sp, bottom: 20.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(GoVestAssetsPath.withdraw),
                        SizedBox(width: 10.sp,),
                        Padding(
                          padding: EdgeInsets.only(right: 50.sp),
                          child: Column(
                            children: [
                              Text(
                                "Wallet withdraw",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w700,
                                  color: whiteText,
                                ),
                              ),
                              SizedBox(
                                height: 5.sp,
                              ),
                              Text(
                                "5 May 2021 at 12:30 AM",
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w400,
                                  color: greyText,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(GoVestAssetsPath.naira),
                            SizedBox(width: 2.sp,),
                            Text(
                              "2,000",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  color: whiteText),
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
        color: veteranBlue,
        borderRadius: BorderRadius.circular(10.r),
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
                    color: whiteText,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  accNo,
                  style: TextStyle(
                    color: whiteText,
                    fontSize: 10.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Text(
                  amount,
                  style: TextStyle(
                    color: whiteText,
                    fontFamily: GoVestAssetsPath.govestFont,
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
                    color: whiteText,
                    fontFamily: GoVestAssetsPath.govestFont,
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
                color: sapphireGlitter2,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r))),
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
                          color: greyText,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 13.sp,
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
