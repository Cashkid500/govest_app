import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/savings/preview_savings.dart';

class GoTargetSavingsScreen extends StatefulWidget {
  const GoTargetSavingsScreen({Key? key}) : super(key: key);

  @override
  State<GoTargetSavingsScreen> createState() => _GoTargetSavingsScreenState();
}

class _GoTargetSavingsScreenState extends State<GoTargetSavingsScreen> {
  List<String> items = [
    GoVestText.daily,
    GoVestText.weekly,
    GoVestText.monthly,
  ];
  int current = 0;
  List<String> items1 = [
    GoVestText.autosave,
    GoVestText.manual,
  ];
  int current1 = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              right: 20.sp, left: 20.sp, top: 50.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.close,
                color: hooloovooBlue,
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.goTargetSavings,
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
                GoVestText.targetAmount,
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
                  Image.asset(
                    GoVestAssetsPath.bigNaira,
                    height: 16.sp,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    GoVestText.figure,
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 5.sp,
                child: Divider(
                  thickness: 1.sp,
                  color: blackText,
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Row(children: [
                Icon(Icons.check_circle,color: springForth,),
                SizedBox(
                  width: 5.sp,
                ),
                Text(
                  GoVestText.amount,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w500,
                      color: spanishGrey),
                ),
              ]),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                GoVestText.setTitle2,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    color: spanishGrey),
              ),
              SizedBox(height: 20.sp),
              Text(
                GoVestText.weddingAid,
                style: TextStyle(
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: blackText),
              ),
              SizedBox(
                height: 20.sp,
                child: Divider(
                  thickness: 1.sp,
                  color: blackText,
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                GoVestText.howSafe,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: spanishGrey),
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                margin: EdgeInsets.all(5.sp),
                                width: 100.sp,
                                height: 50.sp,
                                decoration: BoxDecoration(
                                    color: current == index
                                        ? veteranBlue
                                        : whiteText.withOpacity(0.12),
                                    border: Border.all(color: icyLilac),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    items[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: current == index
                                            ? whiteText
                                            : veteranBlue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(height: 15.sp),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                GoVestText.howSafe,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: spanishGrey),
              ),
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
                              margin: EdgeInsets.all(5.sp),
                              width: 120.sp,
                              height: 50.sp,
                              decoration: BoxDecoration(
                                  color: current1 == index
                                      ? veteranBlue
                                      : whiteText.withOpacity(0.12),
                                  border: Border.all(color: icyLilac),
                                  borderRadius: BorderRadius.circular(5.r)),
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
              SizedBox(
                height: 80.sp,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>const PreviewSavingsScreen()));
                },
                child: Container(
                  height: 60.sp,
                  width: 329.sp,
                  decoration: BoxDecoration(
                      color: hooloovooBlue,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    GoVestText.cont,
                    style: TextStyle(
                        fontFamily: GoVestAssetsPath.govestFont,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: whiteText),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
