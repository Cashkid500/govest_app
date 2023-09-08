import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/savings/gowallet.dart';

import '../constants/asset_path.dart';


class GoSaveScreen extends StatefulWidget {
  const GoSaveScreen({Key? key}) : super(key: key);

  @override
  State<GoSaveScreen> createState() => _GoSaveScreenState();
}

class _GoSaveScreenState extends State<GoSaveScreen> {
  bool _switchFunction = false;
  List<String> items1 = [
  "Autosave",
  "Manual",
  ];
  int current1 = 0;

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
                "Create GoTargetSavings",
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
                "Create a safelock for 10-30 days with a return close to 6%. The longer the payback date, the higher your return.",
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
                "How much to save per time?",
                style: TextStyle(
                  fontSize: 12.sp,
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
                Image.asset('assets/images/Big Naira.png', height: 16.sp,),
                SizedBox(width: 10.sp,),
                Text("200,000.00", style: TextStyle(fontSize: 24.sp, fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700),)
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
             Text("Set Title for your Savings", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 12.sp, color: spanishGrey),),
             SizedBox(height: 20.sp),
            Text("Wedding Aid", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize: 16.sp, color: blackText),),
            SizedBox(height: 20.sp,
             child: Divider(
              thickness: 1.sp,
              color: blackText,
             ),),
             SizedBox(height: 25.sp,),
             Text("How do you want to safe?", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp, fontFamily: GoVestAssetsPath.govestFont, color: Color(0xff979797)),),
             SizedBox(height: 10.sp),
             SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: items1.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current1 = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 100),
                              margin: EdgeInsets.all(5),
                              width: 120.sp,
                              height: 54.sp,
                              decoration: BoxDecoration(
                                  color: current1 == index
                                      ? veteranBlue
                                      : whiteText.withOpacity(0.12),
                                  border: Border.all(color: icyLilac),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Container(
                                      height: 20.sp,
                                      width: 20.sp,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.r),
                                        color: current1 == index
                                            ? whiteText
                                            : veteranBlue,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.sp,
                                    ),
                                    Text(
                                      items1[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: current1 == index
                                              ? whiteText
                                              : veteranBlue),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
             SizedBox(height: 20.sp,),
             SizedBox(
                height: 30.sp,
              ),
              Text(
                "Select source of fund",
                style: TextStyle(
                    fontSize: 20.sp,
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
                      width: 2.sp,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Wallet - NGN 200,000',
                    labelStyle: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                    suffixIcon: Icon(Icons.expand_more,color: spanishGrey,size: 30.sp,),
                   ),
                ),
              ),
              SizedBox(height: 15.sp,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: spanishGrey,
                      borderRadius: BorderRadius.circular(8.r),
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
             GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>GoWalletScreen())
            );
          },
               child: Container(
                height: 60.sp,
                width: 329.sp,
                decoration: BoxDecoration(
                  color: hooloovooBlue,
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: Center(child: Text("GO SAVE NOW", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 20.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
