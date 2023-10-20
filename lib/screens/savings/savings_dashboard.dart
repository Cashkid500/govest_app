import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/savings_transactions.dart';
import '../constants/asset_path.dart';


class SavingsDashboardScreen extends StatefulWidget {
  const SavingsDashboardScreen({Key? key}) : super(key: key);

  @override
  State<SavingsDashboardScreen> createState() => _SavingsDashboardScreenState();
}

class _SavingsDashboardScreenState extends State<SavingsDashboardScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String Gotype = GoVestText.gobank;
    String Amount = GoVestText.fortyKay;
    String Interest = GoVestText.sixPercent;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: biopunk.withOpacity(0.23)),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
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
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontSize: 24.sp,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: GoVestText.go,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: springForth,
                                        decorationThickness: 0.5.sp,
                                        color: springForth,
                                      ),
                                    ),
                                    TextSpan(
                                      text: GoVestText.savings2,
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: veteranBlue,
                                          decorationThickness: 0.5.sp,
                                          color: veteranBlue),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.sp,),
                              Text(
                                GoVestText.boldStep,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    fontWeight: FontWeight.w400,
                                    color: spanishGrey),
                              )
                            ],
                          ),
                          Icon(Icons.add_circle, color: hooloovooBlue, size: 45.sp,),
                        ],
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        children: [
                          Image.asset(GoVestAssetsPath.bigNaira, color: blackText,),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Text(
                            GoVestText.fiveNinety,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: blackText,
                              decorationThickness: 1.sp,
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssetsPath.govestFont,
                              color: blackText,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.sp, right: 30.sp, top: 30.sp, bottom: 10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GoVestText.dashboard,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: hooloovooBlue,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) =>SavingsTransactionsScreen())
              );
            },
                              child: Text(
                                GoVestText.transactions,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w700,
                                  color: spanishGrey,
                                ),
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
                            color: spanishGrey,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer1(
                    Gotype: Gotype, Amount: Amount, Interest: Interest),
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer2(
                    Gotype: GoVestText.goWallet3, Amount: Amount, Interest: Interest),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.sp,
                ),
                SavingsDashboardContainer2(
                    Gotype: GoVestText.goLock, Amount: Amount, Interest: Interest),
                SavingsDashboardContainer1(
                    Gotype: GoVestText.goTarget2, Amount: Amount, Interest: Interest),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SavingsDashboardContainer2 extends StatelessWidget {
  const SavingsDashboardContainer2({
    super.key,
    required this.Gotype,
    required this.Amount,
    required this.Interest,
  });

  final String Gotype;
  final String Amount;
  final String Interest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.sp,
        top: 20.sp,
      ),
      child: Container(
        height: 201.sp,
        width: 147.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: hooloovooBlue,
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
                height: 10.sp,
              ),
              Text(
                Gotype,
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
                height: 30.sp,
              ),
              Text(
                Amount,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    color: whiteText),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Interest,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteText,
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

class SavingsDashboardContainer1 extends StatelessWidget {
  const SavingsDashboardContainer1({
    super.key,
    required this.Gotype,
    required this.Amount,
    required this.Interest,
  });

  final String Gotype;
  final String Amount;
  final String Interest;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.sp,
      ),
      child: Container(
        height: 204.sp,
        width: 147.sp,
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
              SizedBox(height: 10.sp,),
              Text(
                Gotype,
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
              SizedBox(height: 30.sp,),
              Text(
                Amount,
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    color: whiteText),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    Interest,
                    style: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteText,
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
