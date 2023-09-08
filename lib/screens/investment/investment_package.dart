import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import '../constants/asset_path.dart';
import 'investment_details.dart';


class InvestmentPackageScreen extends StatefulWidget {
  const InvestmentPackageScreen({Key? key}) : super(key: key);

  @override
  State<InvestmentPackageScreen> createState() => _InvestmentPackageScreenState();
}

class _InvestmentPackageScreenState extends State<InvestmentPackageScreen> {
  List<String> items = [
  "RealVest",
  "AgroVest",
  "ManuVest",
  "HalalVest",
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Vest",
                          style: TextStyle(
                          color: springForth,
                          fontFamily: GoVestAssetsPath.govestFont,
                          ),
                        ),
                        TextSpan(
                          text: "ing",
                          style: TextStyle(color: veteranBlue, fontFamily: GoVestAssetsPath.govestFont),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 38.sp,
                    width: 38.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500.r),
                      border: Border.all(color: mithril),
                    ),
                    child: Icon(Icons.receipt_long, color: hooloovooBlue,)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 130.sp),
                child: Text(
                  "Take a bold step to get higher return",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: spanishGrey),
                ),
              ),
              SizedBox(height: 20.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(GoVestAssetsPath.nairaBlue),
                      Text(
                        "590,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: GoVestAssetsPath.govestFont,
                          color: hooloovooBlue,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(GoVestAssetsPath.nairaBlue),
                      Text(
                        "690,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w700,
                          color: hooloovooBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TotalInput(),
                  TotalInput(),
                  ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 120.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: veteranBlue,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6.sp),
                              child: Text(
                                "We need to know\nyou better",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  color: whiteText,
                                ),
                              ),
                            ),
                            SizedBox(height: 20.sp),
                            Padding(
                              padding: EdgeInsets.only(left: 8.sp),
                              child: Text(
                                "PROCEED",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: GoVestAssetsPath.govestFont,
                                  color: poisonousIceCream,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(GoVestAssetsPath.proceed),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280.sp,
                    height: 36.sp,
                    decoration: BoxDecoration(
                      color: spanishGrey.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(7.r),
                      border: Border.all(color: greyText),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for investments',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: greyText),
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.grid_view_rounded, color: hooloovooBlue, size: 35.sp,)
                ],
              ),
              SizedBox(height: 20.sp,),
              SizedBox(
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
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 17,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? veteranBlue
                                    : whiteText.withOpacity(0.12),
                                border: Border.all(color: icyLilac),
                                borderRadius: current == index
                                    ? BorderRadius.circular(50.r)
                                    : BorderRadius.circular(0),
                              ),
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
              SizedBox(
                height: 20.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) =>InvestmentDetailsScreen())
                    );
                    },
                  child: Container(
                      height: 269.sp,
                      width: 150.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(GoVestAssetsPath.maize),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7.r),
                                  bottomRight: Radius.circular(7.r),
                                ),
                                color: veteranBlue),
                            child: Padding(
                              padding: EdgeInsets.all(8.sp),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 125.sp,
                                    child: Text(
                                      "Cashew Nut Investment",
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontWeight: FontWeight.w700,
                                          color: whiteText),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "13%",
                                          style: TextStyle(
                                              color: poisonousIceCream, fontFamily: GoVestAssetsPath.govestFont),
                                        ),
                                        TextSpan(
                                          text: " returns in 3 months",
                                          style: TextStyle(
                                            fontFamily: GoVestAssetsPath.govestFont,
                                            color: whiteText,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.sp,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(GoVestAssetsPath.naira),
                                          SizedBox(
                                            width: 2.sp,
                                          ),
                                          Text(
                                            "50,000",
                                            style: TextStyle(
                                                color: whiteText,
                                                fontFamily: GoVestAssetsPath.govestFont,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 50.sp,
                                      ),
                                      Text(
                                        "120",
                                        style: TextStyle(
                                          color: whiteText,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Per unit",
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: whiteText,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 57.sp,
                                      ),
                                      Text(
                                        "Available Unit",
                                        style: TextStyle(
                                          fontSize: 8.sp,
                                          fontWeight: FontWeight.w400,
                                          color: whiteText,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 269.sp,
                    width: 150.sp,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(GoVestAssetsPath.poultry),
                        Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(7.r),
                                bottomRight: Radius.circular(7.r),
                              ),
                              color: veteranBlue),
                          child: Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 125.sp,
                                  child: Text(
                                    "Poultry Farm Investment",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w700,
                                        color: whiteText),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10.sp,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "13%",
                                        style:
                                            TextStyle(color: poisonousIceCream, fontFamily: GoVestAssetsPath.govestFont),
                                      ),
                                      TextSpan(
                                        text: " returns in 3 months",
                                        style: TextStyle(
                                          color: whiteText,
                                          fontFamily: GoVestAssetsPath.govestFont,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(GoVestAssetsPath.naira),
                                        SizedBox(
                                          width: 2.sp,
                                        ),
                                        Text(
                                          "10,000",
                                          style: TextStyle(
                                              color: whiteText,
                                              fontFamily: GoVestAssetsPath.govestFont,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50.sp,
                                    ),
                                    Text(
                                      "300",
                                      style: TextStyle(
                                        color: whiteText,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.sp,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Per unit",
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        color: whiteText,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 49.sp,
                                    ),
                                    Text(
                                      "Available Unit",
                                      style: TextStyle(
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        color: whiteText,
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 95.sp),
                                  child: Container(
                                    height: 14.sp,
                                    width: 42.sp,
                                    decoration: BoxDecoration(
                                      color: whiteText,
                                      borderRadius: BorderRadius.circular(50.r)
                                    ),
                                    child: Center(
                                      child: Text("SOLD OUT", style: TextStyle( fontSize: 6.sp, fontWeight: FontWeight.w700, color: glowingBrakeDisc, fontFamily: GoVestAssetsPath.govestFont,
                                    )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalInput extends StatelessWidget {
  const TotalInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Total Input",
      style: TextStyle(
        fontSize: 10.sp,
        fontFamily: GoVestAssetsPath.govestFont,
        fontWeight: FontWeight.w400,
        color: spanishGrey,
      ),
    );
  }
}
