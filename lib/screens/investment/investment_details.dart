import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/investment/investment_package.dart';
import 'package:govest_app/screens/safelock/safelock.dart';

class InvestmentDetailsScreen extends StatefulWidget {
  const InvestmentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<InvestmentDetailsScreen> createState() =>
      _InvestmentDetailsScreenState();
}

class _InvestmentDetailsScreenState extends State<InvestmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String investment = GoVestText.expectedReturn;
    String Returnpath = GoVestText.thirtyPercent;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 375.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(GoVestAssetsPath.cashew),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        veteranBlue.withOpacity(0.6), BlendMode.srcOver),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>const
                                    InvestmentPackageScreen()));
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: whiteText,
                          )),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp),
                            child: Text(
                              GoVestText.ongoingLive,
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  color: biopunk),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Container(
                            width: 12.sp,
                            height: 12.sp,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: whiteText,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp),
                        child: Text(
                          GoVestText.cashew,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontSize: 22.sp,
                            color: whiteText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.sp),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 2.sp,
                          decoration: BoxDecoration(
                            color: spanishGrey,
                            borderRadius: BorderRadius.circular(1.r),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.sp,
                          bottom: 20.sp,
                        ),
                        child: Text(
                          GoVestText.agroAllied,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: whiteText,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.sp,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteText,
                              borderRadius: BorderRadius.circular(50.r)),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Text(
                              GoVestText.verifiedOpportunity,
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: hooloovooBlue,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GoVestText.available,
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: whiteText,
                              ),
                            ),
                            Text(
                              GoVestText.twentyK,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: whiteText,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp, right: 20.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GoVestText.units,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: whiteText,
                              ),
                            ),
                            Text(
                              GoVestText.perUnit,
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w600,
                                color: whiteText,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                  right: 40.sp, top: 20.sp, left: 40.sp, bottom: 20.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        GoVestText.about,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                          color: hooloovooBlue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    GoVestText.amet,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        GoVestText.readMore,
                        style: TextStyle(
                          color: hooloovooBlue,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp, bottom: 40.sp),
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: blackText,
                        border: Border(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CashewNutReturn(
                          investment: investment, Returnpath: Returnpath),
                      Container(
                        height: 74.sp,
                        width: 130.sp,
                        decoration: BoxDecoration(
                          color: springForth,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              GoVestText.insurancePartner,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: whiteText,
                              ),
                            ),
                            SizedBox(
                              height: 3.sp,
                            ),
                            Text(
                              GoVestText.leadwayAssurance,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: whiteText,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CashewNutReturn(
                          investment: GoVestText.currentCost,
                          Returnpath: GoVestText.twentyKay),
                      CashewNutReturn(
                          investment: GoVestText.payoutType,
                          Returnpath: GoVestText.capital),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>const SafelockScreen()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.sp,
                      decoration: BoxDecoration(
                        color: hooloovooBlue,
                      ),
                      child: Center(
                        child: Text(
                          GoVestText.buyNow,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 16.sp,
                              color: whiteText),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CashewNutReturn extends StatelessWidget {
  const CashewNutReturn({
    super.key,
    required this.investment,
    required this.Returnpath,
  });

  final String investment;
  final String Returnpath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.sp,
      width: 130.sp,
      decoration: BoxDecoration(
        color: springForth,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            investment,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              fontFamily: GoVestAssetsPath.govestFont,
              color: whiteText,
            ),
          ),
          SizedBox(
            height: 3.sp,
          ),
          Text(
            Returnpath,
            style: TextStyle(
              fontSize: 14.sp,
              fontFamily: GoVestAssetsPath.govestFont,
              fontWeight: FontWeight.w700,
              color: whiteText,
            ),
          )
        ],
      ),
    );
  }
}
