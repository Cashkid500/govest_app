import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/asset_path.dart';

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
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52),
              topRight: Radius.circular(52),
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
                        "Connect your bank",
                        style: TextStyle(
                          color: Color(0xff3B5AFB),
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
                            "Provide us with acccount to withdraw your funds",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff414141)),
                          )),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Text(
                        "Enter Your Account Number",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: Color(0xffc4c4c4)),
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
                                horizontal: 20, vertical: 20),
                            isCollapsed: true,
                            labelText: '0123456789',
                            labelStyle: TextStyle(
                              color: Color(0xff3B5AFB),
                              fontSize: 14.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r),
                              borderSide:
                                  BorderSide(color: Color(0xff6E6E71), width: 1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp,),
                      Text(
                        "Select Your Bank",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoVestAssetsPath.govestFont,
                            color: Color(0xffc4c4c4)),
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
                                horizontal: 20, vertical: 20),
                            isCollapsed: true,
                            labelText: "Select Your Bank",
                            labelStyle: TextStyle(
                              color: Color(0xff3B5AFB),
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.r),
                              borderSide:
                                  BorderSide(color: Color(0xff6E6E71), width: 1.sp),
                            ),
                            suffixIcon: Icon(Icons.expand_more),
                          ),
                        ),
                      ),
                      SizedBox(height: 55.sp),
                      Container(
                              height: 60.sp,
                              width: 300.sp,
                              decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(4.r)
                              ),
                              child: Center(child: Text("VERIFY ACCOUNT", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
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
        backgroundColor: Color(0xff3B5AFB),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.sp, top: 40.sp, right: 20.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.chevron_left, color: Color(0xffffffff), size: 30.sp),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 200.sp,
                  child: Text(
                    "Connect your Card & bank",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: Color(0xffffffff),
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
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 66),
                          child: Text(
                            "Add Bank Details",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB)),
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
                              Image.asset('assets/images/Purse.png'),
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
                                            "This is where your funds would be transfered to\nwhen you inititate withdrwal.\n",
                                        style: TextStyle(
                                          color: Color(0xff979797),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            "You would be credited before 1 hr.",
                                        style: TextStyle(
                                          color: Color(0xff979797),
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
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 66.sp, top: 10.sp),
                          child: Text(
                            "Add Debit Card",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff0EB51F)),
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
                              Image.asset('assets/images/Wallet2.png'),
                              SizedBox(
                                width: 10.sp,
                              ),
                              SizedBox(
                                width: 250.sp,
                                child: Text(
                                  "We don’t store your card details, it is passed to your bank for verification",
                                  style: TextStyle(
                                    color: Color(0xff979797),
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
                    color: Color(0xffffffff),
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
                            "LUKMAN IBRAHIM OLALEKAN",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff3B5AFB)),
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Text(
                            "3091534445 - First Bank",
                            style: TextStyle(
                                fontFamily: GoVestAssetsPath.govestFont,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff3B5AFB)),
                          ),
                        ],
                      ),
                      Icon(Icons.fingerprint,
                          color: Color(0xff3B5AFB), size: 50.sp)
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 220.sp),
                  child: Text(
                    'Edit Bank Details',
                    style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 150.sp,
                  width: 352.sp,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
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
                              "LUKMAN IBRAHIM OLALEKAN",
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3B5AFB)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Text(
                              "12/22",
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff3B5AFB)),
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
                              "****  ****  **** 3566",
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3B5AFB)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.sp),
                            child: Text(
                              "First Bank",
                              style: TextStyle(
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff3B5AFB)),
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
                    'Edit Card',
                    style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
