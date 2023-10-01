import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/investment/investment_package_grid.dart';
import '../constants/asset_path.dart';
import '../constants/color_constants.dart';

class AddBankScreen extends StatefulWidget {
  const AddBankScreen({Key? key}) : super(key: key);

  @override
  State<AddBankScreen> createState() => _AddBankScreenState();
}

class _AddBankScreenState extends State<AddBankScreen> {
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
                        GoVestText.connectBank,
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
                          width: 270.sp,
                          child: Text(
                            GoVestText.provide,
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
                        GoVestText.accountNumber,
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
                            labelText: GoVestText.longDigits,
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
                        GoVestText.selectBank,
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
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.sp, vertical: 20.sp),
                            isCollapsed: true,
                            labelText: GoVestText.selectBank,
                            labelStyle: TextStyle(
                              color: hooloovooBlue,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: whiteText,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide:
                                  BorderSide(color: antiqueTin, width: 1.sp),
                            ),
                            suffixIcon: Icon(Icons.expand_more),
                          ),
                        ),
                      ),
                      SizedBox(height: 55.sp),
                      GestureDetector(
                        onTap: () {
                      _showOrderDialog(context);
                        },
                        child: Container(
                                height: 60.sp,
                                width: 300.sp,
                                decoration: BoxDecoration(
                                        color: hooloovooBlue,
                                        borderRadius: BorderRadius.circular(4.r)
                                ),
                                child: Center(child: Text(GoVestText.verifyAccount, style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w700, color: whiteText),)),
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
                          builder: (BuildContext context) => InvestmentPackageGridScreen()));
                    },
                child: Icon(Icons.arrow_back_ios, color: whiteText, size: 25.sp)),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 200.sp,
                  child: Text(
                    GoVestText.connectCard,
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
                GestureDetector(
                  onTap: () {
                  _showBottomSheet(context);
                  },
                  child: Container(
                    height: 150.sp,
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
                            GoVestText.addBank,
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
                              Image.asset(GoVestAssetsPath.purse),
                              Padding(
                                padding: EdgeInsets.only(right: 18.sp),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      height: 2.2.sp,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            GoVestText.funds,
                                        style: TextStyle(
                                          color: spanishGrey,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            GoVestText.credited,
                                        style: TextStyle(
                                          color: spanishGrey,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Second Container
                SizedBox(
                  height: 20.sp,
                ),
                GestureDetector(
                  onTap: () {
                  _showBottomSheet(context);
                  },
                  child: Container(
                    height: 150.sp,
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
                          padding: EdgeInsets.only(left: 66.sp, top: 10.sp),
                          child: Text(
                            GoVestText.addDebitCard,
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: springForth),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(GoVestAssetsPath.wallet2),
                              SizedBox(
                                width: 10.sp,
                              ),
                              SizedBox(
                                width: 250.sp,
                                child: Text(
                                  GoVestText.store,
                                  style: TextStyle(
                                    color: spanishGrey,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: GoVestAssetsPath.govestFont,
                                    height: 1.5.sp,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              )
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
                // Third Container
                Container(
                  height: 150.sp,
                  width: 352.sp,
                  decoration: BoxDecoration(
                    color: whiteText,
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            GoVestText.accountName,
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: hooloovooBlue),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Text(
                            GoVestText.accountDetails,
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: hooloovooBlue),
                          ),
                        ],
                      ),
                      Icon(Icons.fingerprint,
                          color: hooloovooBlue, size: 50.sp)
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 220.sp),
                  child: Text(
                    GoVestText.editBank,
                    style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: whiteText),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 150.sp,
                  width: 352.sp,
                  decoration: BoxDecoration(
                    color: whiteText,
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp),
                            child: Text(
                              GoVestText.accountName,
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: hooloovooBlue),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Text(
                              GoVestText.expiryDate,
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: hooloovooBlue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.sp),
                            child: Text(
                              GoVestText.lastFourDigits,
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: hooloovooBlue),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Text(
                              GoVestText.bankName,
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: hooloovooBlue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 260.sp),
                  child: Text(
                    GoVestText.editCard,
                    style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: whiteText),
                  ),
                ),
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
          title: Text(GoVestText.proceed2, 
          style: TextStyle(
            fontFamily: GoVestAssetsPath.govestFont,
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            color: blackText,
          ),),
          content: Container(
            height: 130.sp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(GoVestText.authorizeText,
                style: TextStyle(
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: blackText,
                ),),
                SizedBox(height: 20.sp,),
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
                                  AddBankScreen()));
                        },
                        child: Text(GoVestText.cancel,
                        style: TextStyle(
                          fontFamily: GoVestAssetsPath.fontsPath,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),),
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
                        },
                        child: Text(GoVestText.confirm,
                        style: TextStyle(
                          fontFamily: GoVestAssetsPath.fontsPath,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                        ),),
                        style: ElevatedButton.styleFrom(
                          primary:
                              springForth,
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
