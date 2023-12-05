import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/investment/investment_package_grid.dart';

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
                        GoVestText.verifyBVN,
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
                            GoVestText.otpCode,
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
                        GoVestText.enterOtp,
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
                            labelText: GoVestText.shortDigits,
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
                        GoVestText.goVestPassword,
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
                            labelText: GoVestText.asterisks,
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
                      GestureDetector(
                        onTap: () {
                      _showOrderDialog(context);
                        },
                        child: Container(
                                height: 60.sp,
                                width: 300.sp,
                                decoration: BoxDecoration(
                                color: hooloovooBlue,
                                borderRadius: BorderRadius.circular(10.r)
                                ),
                                child: Center(child: Text(GoVestText.verifyBVN2, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
                              ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>const InvestmentPackageGridScreen()));
                    },
                child: Icon(Icons.arrow_back_ios, color: whiteText, size: 25.sp)),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 200.sp,
                  child: Text(
                    GoVestText.identityVerification,
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
                  child: Text(GoVestText.important, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 12.sp, fontWeight: FontWeight.w400, color: whiteText),)),
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
                            GoVestText.whyBVN,
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
                              child: Text(GoVestText.identityConfirmation, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, fontFamily: GoVestAssetsPath.govestFont, color: spanishGrey),))
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
                    labelText: GoVestText.connectBVN,
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, color: whiteText, fontWeight: FontWeight.w700)
                  ),
                ),
                SizedBox(height: 20.sp,),
                Text(GoVestText.enterBVN, style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w700, fontFamily: GoVestAssetsPath.govestFont, color: whiteText),),
                SizedBox(height: 10.sp,),
                SizedBox(
                        width: 300.sp,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.sp, vertical: 20.sp),
                            isCollapsed: true,
                            labelText: GoVestText.longDigits2,
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
                    Text(GoVestText.bvnVerified, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)
                ],
            ),
          ),
        )
      );
  }


  void _showOrderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            GoVestText.correctBVN,
            style: TextStyle(
              fontFamily: GoVestAssetsPath.govestFont,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: blackText,
            ),
          ),
          content: Container(
            height: 150.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GoVestText.bvnConfirmation,
                  style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: blackText,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50.sp,
                      width: 100.sp,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your action for Cancel here
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SetupKYCScreen()));
                        },
                        child: Text(
                          GoVestText.cancel,
                          style: TextStyle(
                            fontFamily: GoVestAssetsPath.fontsPath,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: hooloovooBlue,
                        ),
                      ),
                    ),
                    Container(
                      height: 50.sp,
                      width: 100.sp,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your action for Order Now here
                          Navigator.of(context).pop();
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(GoVestText.bvnVerification,
                                style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: hooloovooBlue,
                                ),),
                                content: Container(
                                  height: 60.sp,
                                  child: Text(GoVestText.bvnAuthorization,
                                  style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13.sp,
                                  color: scarabaeusSacer,
                                  ),),
                                ),
                                actions: <Widget>[
                                  Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 30.sp),
                                      child: Container(
                                        height: 40.sp,
                                        width: 100.sp,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (BuildContext context) => SetupKYCScreen()));
                                          },
                                          child: Text(GoVestText.gracias, 
                                          style: TextStyle(
                                            fontFamily: GoVestAssetsPath.fontsPath,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: whiteText,
                                          ),),
                                          style: ElevatedButton.styleFrom(
                                            primary: springForth,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          GoVestText.confirm,
                          style: TextStyle(
                            fontFamily: GoVestAssetsPath.fontsPath,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: springForth,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
