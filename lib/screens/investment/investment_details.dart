import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/safelock/safelock.dart';

import '../constants/asset_path.dart';


class InvestmentDetailsScreen extends StatefulWidget {
  const InvestmentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<InvestmentDetailsScreen> createState() => _InvestmentDetailsScreenState();
}

class _InvestmentDetailsScreenState extends State<InvestmentDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     String investment = "Expected Return";
    String Returnpath = "30% in 6 months";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 375.sp,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Cashew.png'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color(0xff2A52E2).withOpacity(0.6), BlendMode.srcOver),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios, color: Color(0xffffffff),),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp),
                            child: Text(
                              "Ongoing Live",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  color: Color(0xff60F248)),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.sp,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp),
                        child: Text(
                          "Cashew Nut Investment",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontSize: 22.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 2.sp,
                          decoration: BoxDecoration(
                            color: Color(0xff979797),
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
                          "By Agro-allied investment",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp,),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50.r)),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Text(
                              "VERIFIED OPPURTUNITY",
                              style: TextStyle(
                                fontSize: 6.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.sp, top: 5.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Available",
                              style: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "N20,000",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: Colors.white,
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
                              "120 units left",
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Per unit",
                              style: TextStyle(
                                fontSize: 10.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: 40.sp, top: 20.sp, left: 40.sp, bottom: 20.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "About this Investment",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                          color: Color(0xff3B5AFB),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    "Amet rhoncus tellus quis vestibulum. Urna nullam placerat nunc, bibendum tincidunt egestas.  Amet rhoncus tellus quis vestibulum. Urna nullam placerat nunc, bibendum tincidunt egestas. ",
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
                        "Read more",
                        style: TextStyle(
                          color: Color(0xff3B5AFB),
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
                        color: Colors.black,
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
                          color: Color(0xff0EB51F),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Insurance Partner",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 3.sp,
                            ),
                            Text(
                              "Leadway Assurance",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
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
                          investment: "Current Cost / Unit",
                          Returnpath: "N 20,000"),
                      CashewNutReturn(
                          investment: "Payout Type",
                          Returnpath: "Capital + Profit"),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>SafelockScreen())
            );
          },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff3B5AFB),
                      ),
                      child: Center(
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 16.sp,
                              color: Colors.white),
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
        color: Color(0xff0EB51F),
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
              color: Colors.white,
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
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
