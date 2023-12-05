import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/gotarget_savings.dart';


class GoSavingsScreen extends StatefulWidget {
  const GoSavingsScreen({Key? key}) : super(key: key);

  @override
  State<GoSavingsScreen> createState() => _GoSavingsScreenState();
}

class _GoSavingsScreenState extends State<GoSavingsScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp, top: 50.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close, color: hooloovooBlue,),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.goSavings,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: hooloovooBlue,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.createSafelock,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w400,
                  color: blackText,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                height: 86.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: hooloovooBlue,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(GoVestAssetsPath.whiteWallet, height: 36.sp, width: 36.sp,),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GoVestText.goSavings2,
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: whiteText,
                            ),
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              GoVestText.safelockDays2,
                              style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: whiteText.withOpacity(0.6),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.sp,),
              GestureDetector(
                 onTap: () {
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context) =>const GoTargetSavingsScreen())
              );
            },
                child: Container(
                  height: 86.sp,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: springForth,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(GoVestAssetsPath.whiteWallet, height: 36.sp, width: 36.sp),
                        SizedBox(
                          width: 20.sp,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              GoVestText.goTarget,
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: GoVestAssetsPath.govestFont,
                                color: whiteText,
                              ),
                            ),
                            SizedBox(
                              width: 230.sp,
                              child: Text(
                                GoVestText.savingsTarget,
                                style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: whiteText.withOpacity(0.6),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
