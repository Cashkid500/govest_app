import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';

import '../constants/asset_path.dart';

class SetupKYCScreen extends StatefulWidget {
  const SetupKYCScreen({Key? key}) : super(key: key);

  @override
  State<SetupKYCScreen> createState() => _SetupKYCScreenState();
}

class _SetupKYCScreenState extends State<SetupKYCScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600.sp,
          decoration: BoxDecoration(
            color: whiteText,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52.r),
              topRight: Radius.circular(52.r),
            ),
          ),
          // Content of the bottom sheet
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(top: 10.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Verify BVN",
                        style: TextStyle(
                          color: hooloovooBlue,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      SizedBox(
                          width: 340.sp,
                          child: Text(
                            "An OTP code has been sent to the phone number tied to the BVN you provided. Enter it below.",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: scarabaeusSacer),
                          )),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        "Enter OTP",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: weatheredStone),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      SizedBox(
                        width: 300.sp,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.sp, vertical: 20.sp),
                            isCollapsed: true,
                            labelText: "275963",
                            labelStyle: TextStyle(
                              color: hooloovooBlue,
                              fontSize: 14.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: whiteText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide:
                                  BorderSide(color: antiqueTin, width: 1.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp,),
                      Text(
                        "Enter Your GoVest Password",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: weatheredStone),
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      SizedBox(
                        width: 300.sp,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.sp, vertical: 20.sp),
                            isCollapsed: true,
                            labelText: "**********",
                            labelStyle: TextStyle(
                              color: hooloovooBlue,
                              fontSize: 14.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: whiteText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide:
                                  BorderSide(color: antiqueTin, width: 1.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 36.sp),
                      Container(
                              height: 60.sp,
                              width: 300.sp,
                              decoration: BoxDecoration(
                              color: hooloovooBlue,
                              borderRadius: BorderRadius.circular(10.r)
                              ),
                              child: Center(child: Text("VERIFY BVN", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
                             ),
                
                    ],
                  ),
                ),
                onTap: () {
                  // Handles Option 1
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: hooloovooBlue,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.sp, top: 40.sp, right: 20.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.chevron_left, color: whiteText, size: 30.sp),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 200.sp,
                  child: Text(
                    "Let’s Verify your Identity",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: whiteText,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 300.sp,
                  child: Text("It is very important to verify your identity with GOVest", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 12.sp, fontWeight: FontWeight.w400, color: whiteText),)),
                SizedBox(height: 20.sp,),
                GestureDetector(
                  onTap: () {
                  _showBottomSheet(context);
                  },
                  child: Container(
                    height: 167.sp,
                    width: 352.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25.sp,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 66.sp),
                          child: Text(
                            "Why do we ask your BVN?",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: hooloovooBlue),
                          ),
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.sp,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(GoVestAssetsPath.lock),
                              SizedBox(
                                width: 250.sp,
                              child: Text("To confirm your identity on Govest, you need to connect your BVN. This does not give GOVest any access to your bank information or balances. This just enables GoVest to confirm your real identty such as real name, phone, and date of birth. from your bank.", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, fontFamily: GoVestAssetsPath.govestFont, color: spanishGrey),))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Oya, Connect BVN",
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, color: whiteText, fontWeight: FontWeight.w700)
                  ),
                ),
                SizedBox(height: 20.sp,),
                Text("Enter your BVN Number (send *565*0# to get your BVN)", style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700, fontFamily: GoVestAssetsPath.govestFont, color: whiteText),),
                SizedBox(height: 10.sp,),
                SizedBox(
                        width: 300.sp,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.sp, vertical: 20.sp),
                            isCollapsed: true,
                            labelText: "23457876321",
                            labelStyle: TextStyle(
                              color: greyText,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: whiteText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.r),
                              borderSide:
                                  BorderSide(color: antiqueTin, width: 1.sp),
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 60.sp,),
                    Text("Thanks! BVN has been verified", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)
                ],
            ),
          ),
        ));
  }
}
