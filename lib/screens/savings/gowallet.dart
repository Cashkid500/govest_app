import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/profile/add_bank.dart';
import '../constants/asset_path.dart';


class GoWalletScreen extends StatefulWidget {
  const GoWalletScreen({Key? key}) : super(key: key);

  @override
  State<GoWalletScreen> createState() => _GoWalletScreenState();
}

class _GoWalletScreenState extends State<GoWalletScreen> {
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
              Text(
                "Go Wallet",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: hooloovooBlue,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Tap any of the options below to quick save immeditely",
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
              Text(
                "Amount to Save",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontWeight: FontWeight.w700,
                  color: spanishGrey,
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(GoVestAssetsPath.bigNaira, height: 16.sp,),
                SizedBox(width: 10.sp,),
                Text("20,000.00", style: TextStyle(fontSize: 24.sp, fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700),)
              ],
             ),
             SizedBox(height: 5.sp,
             child: Divider(
              thickness: 1.sp,
              color: blackText,
             ),),
             SizedBox(height: 5.sp,),
             Row(
              children: [
                    Icon(Icons.check_circle, color: springForth,),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Type in amount you would like to lock",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w500,
                          color: spanishGrey),
                    ),
              ]
             ),
             SizedBox(height: 30.sp,),
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
                      "I hereby acknowledge this SafeLock CANNOT be broken once it has been created.",
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
             
             SizedBox(height: 20.sp,),
             SizedBox(
                height: 30.sp,
              ),
              Text(
                "Select Payment Method",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: spanishGrey),
              ),
              SizedBox(height: 15.sp,),
              Text("Tap any of the options below to quick save immediately", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 12.sp, fontWeight: FontWeight.w400, color: blackText),),
              SizedBox(height: 30.sp,),
             Container(
              height: 60.sp,
              width: 329.sp,
              decoration: BoxDecoration(
                color: Color(0xff0EB51F),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Text("Use Go Wallet (N20,000)", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700, color: whiteText),)),
             ),
             SizedBox(height: 30.sp,),
             Container(
              height: 60.sp,
              width: 329.sp,
              decoration: BoxDecoration(
                color: hooloovooBlue,
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(GoVestAssetsPath.mastercard),
                  SizedBox(width: 10.sp,),
                  Text("Use Card with Paystack", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 16.sp, fontWeight: FontWeight.w700, color: whiteText),),
                ],
              )),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
