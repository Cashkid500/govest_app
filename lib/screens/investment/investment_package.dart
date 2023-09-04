import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          color: Color(0xff0EB51F),
                          fontFamily: 'Poppins',
                          ),
                        ),
                        TextSpan(
                          text: "ing",
                          style: TextStyle(color: Color(0xff2A52E2), fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 38.sp,
                    width: 38.sp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500.r),
                      border: Border.all(color: Color(0xff878787)),
                    ),
                    child: Icon(Icons.receipt_long, color: Color(0xff3B5AFB),)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 130.sp),
                child: Text(
                  "Take a bold step to get higher return",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                      color: Color(0xff979797)),
                ),
              ),
              SizedBox(height: 20.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/Naira Blue.png"),
                      Text(
                        "590,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/Naira Blue.png"),
                      Text(
                        "690,000.00",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
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
                  Text(
                    "Total Input",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979797),
                    ),
                  ),
                  Text(
                    "Total Output",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff979797),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                height: 120.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff2A52E2),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        // width: 100.sp,
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
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
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
                                  fontFamily: 'Poppins',
                                  color: Color(0xffDDDC24),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/images/Proceed.png"),
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
                      color: Color(0xff979797).withOpacity(0.12),
                      borderRadius: BorderRadius.circular(7.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for investments',
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.grid_view_rounded, color: Color(0xff3B5AFB), size: 35.sp,)
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
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.height / 17,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Color(0xff2A52E2)
                                    : Colors.white.withOpacity(0.12),
                                border: Border.all(color: Color(0xffE7E7F6)),
                                borderRadius: current == index
                                    ? BorderRadius.circular(50)
                                    : BorderRadius.circular(0),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? Colors.white
                                          : Color(0xff2A52E2)),
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
                          Image.asset("assets/images/Maize.png"),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7.r),
                                  bottomRight: Radius.circular(7.r),
                                ),
                                color: Color(0xff2A52E2)),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
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
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
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
                                              color: Color(0xffDDDC24)),
                                        ),
                                        TextSpan(
                                          text: " returns in 3 months",
                                          style: TextStyle(
                                            color: Colors.white,
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
                                          Image.asset(
                                              "assets/images/Naira.png"),
                                          SizedBox(
                                            width: 2.sp,
                                          ),
                                          Text(
                                            "50,000",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
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
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
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
                                          color: Colors.white,
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
                                          color: Colors.white,
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
                        Image.asset("assets/images/Poultry.png",),
                        Container(
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(7.r),
                                bottomRight: Radius.circular(7.r),
                              ),
                              color: Color(0xff2A52E2)),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
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
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
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
                                            TextStyle(color: Color(0xffDDDC24)),
                                      ),
                                      TextSpan(
                                        text: " returns in 3 months",
                                        style: TextStyle(
                                          color: Colors.white,
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
                                        Image.asset("assets/images/Naira.png"),
                                        SizedBox(
                                          width: 2.sp,
                                        ),
                                        Text(
                                          "10,000",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
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
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
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
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
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
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
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
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(50.r)
                                    ),
                                    child: Center(
                                      child: Text("SOLD OUT", style: TextStyle( fontSize: 6.sp, fontWeight: FontWeight.w700, color: Color(0xffF24848),
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
