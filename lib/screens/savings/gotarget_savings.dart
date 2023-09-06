import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/savings/preview_savings.dart';

class GoTargetSavingsScreen extends StatefulWidget {
  const GoTargetSavingsScreen({Key? key}) : super(key: key);

  @override
  State<GoTargetSavingsScreen> createState() => _GoTargetSavingsScreenState();
}

class _GoTargetSavingsScreenState extends State<GoTargetSavingsScreen> {
  List<String> items = [
    "Daily",
    "Weekly",
    "Monthly",
  ];
  int current = 0;
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
          padding: EdgeInsets.only(
              right: 20.sp, left: 20.sp, top: 50.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.close,
                color: Color(0xff3B5AFB),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Create GoTargetSavings",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B5AFB),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "How much is your Target?",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Big Naira.png',
                    height: 16.sp,
                  ),
                  SizedBox(
                    width: 10.sp,
                  ),
                  Text(
                    "200,000.00",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              SizedBox(
                height: 5.sp,
                child: Divider(
                  thickness: 1.sp,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 5.sp,
              ),
              Row(children: [
                Icon(
                  Icons.check_circle,
                  color: Color(0xff0EB51F),
                ),
                SizedBox(
                  width: 5.sp,
                ),
                Text(
                  "Type in amount you would like to lock",
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff979797)),
                ),
              ]),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Set Title for your Target",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 20.sp),
              Text(
                "Wedding Aid",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: Color(0xff000000)),
              ),
              SizedBox(
                height: 20.sp,
                child: Divider(
                  thickness: 1.sp,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                "How do you want to safe?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff979797)),
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
                                margin: EdgeInsets.all(5),
                                width: 100.sp,
                                height: 50.sp,
                                decoration: BoxDecoration(
                                    color: current == index
                                        ? Color(0xff2A52E2)
                                        : Colors.white.withOpacity(0.12),
                                    border: Border.all(color: Color(0xffE7E7F6)),
                                    borderRadius: BorderRadius.circular(5)),
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
              ),
              SizedBox(height: 15.sp),
              SizedBox(
                height: 25.sp,
              ),
              Text(
                "How do you want to safe?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    color: Color(0xff979797)),
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
                              margin: EdgeInsets.all(5),
                              width: 120.sp,
                              height: 50.sp,
                              decoration: BoxDecoration(
                                  color: current1 == index
                                      ? Color(0xff2A52E2)
                                      : Colors.white.withOpacity(0.12),
                                  border: Border.all(color: Color(0xffE7E7F6)),
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
                                        borderRadius: BorderRadius.circular(50),
                                        color: current1 == index
                                            ? Colors.white
                                            : Color(0xff2A52E2),
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
                                              ? Colors.white
                                              : Color(0xff2A52E2)),
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
                      builder: (BuildContext context) => PreviewSavingsScreen()));
                },
                child: Container(
                  height: 60.sp,
                  width: 329.sp,
                  decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff)),
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
