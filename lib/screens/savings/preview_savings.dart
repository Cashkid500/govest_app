import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/gosave.dart';
import '../constants/asset_path.dart';


class PreviewSavingsScreen extends StatefulWidget {
  const PreviewSavingsScreen({Key? key}) : super(key: key);

  @override
  State<PreviewSavingsScreen> createState() => _PreviewSavingsScreenState();
}

class _PreviewSavingsScreenState extends State<PreviewSavingsScreen> {
  bool _switchValue = false;
  bool _switchFunction = false;
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
                height: 20.sp,
              ),
              Text(
                GoVestText.finish,
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
                GoVestText.finalize,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w400,
                  color: blackText,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
            Container(
                height: 76.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: springForth,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
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
                            GoVestText.totalTarget,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: GoVestAssetsPath.govestFont,
                              color: whiteText,
                            ),
                          ),
                          SizedBox(
                            width: 230.sp,
                            child: Text(
                              GoVestText.savingsSetup,
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
            SizedBox(height: 30.sp,),
            Text(GoVestText.preferred, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 12.sp, color: spanishGrey),),
            SizedBox(height: 20.sp),
            Text(GoVestText.threeKay, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 16.sp, color: blackText),),
            SizedBox(height: 20.sp,
            child: Divider(
              thickness: 1.sp,
              color: blackText,
            ),),
            SizedBox(height: 25.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(GoVestText.startDate, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 12.sp, color: spanishGrey),),
                Padding(
                  padding: EdgeInsets.only(right: 40.sp),
                  child: Text(GoVestText.withdrawalDate, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 12.sp, color: spanishGrey),),
                )
              ],
            ),
            SizedBox(height: 15.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(GoVestText.sep, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
                Icon(Icons.calendar_today, color: spanishGrey,),
                Text(GoVestText.dec, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
                Icon(Icons.calendar_today, color: spanishGrey,),
              ],
            ),
            SizedBox(height: 15.sp,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1.sp,
                  width: 140.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: blackText)
                  ),
                ),
                SizedBox(height: 10.sp,),
                Container(
                  height: 1.sp,
                  width: 140.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: blackText)
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.sp,),
            RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: GoVestText.end,
                  style: TextStyle(
                    color: spanishGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                  ),
                ),
                TextSpan(
                  text: GoVestText.oneTwentyDays,
                  style: TextStyle(
                    color: hooloovooBlue,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: GoVestText.with2,
                  style: TextStyle(
                    color: spanishGrey,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: GoVestText.twelvePercent,
                  style: TextStyle(
                    color: springForth,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: GoVestText.returnRate2,
                  style: TextStyle(
                    color: spanishGrey,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
          ),
        SizedBox(height: 15.sp,),
              Text(
                GoVestText.selectSource,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: spanishGrey),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.sp),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: blackText,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: GoVestText.wallet2,
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: spanishGrey,
                      size: 30.sp,
                    ),
                    //
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      GoVestText.authorize2,
                      style: TextStyle(
                        color: blackText,
                        fontSize: 10.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w400,
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
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: spanishGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchFunction,
                      onChanged: (value) {
                        setState(() {
                          _switchFunction = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      GoVestText.acknowledge,
                      style: TextStyle(
                        color: blackText,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.sp,),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>GoSaveScreen())
            );
          },
                child: Container(
                height: 60.sp,
                width: 329.sp,
                decoration: BoxDecoration(
                  color: hooloovooBlue,
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: Center(child: Text(GoVestText.createGoTarget, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, fontWeight: FontWeight.w700, color: whiteText),)),
                           ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
