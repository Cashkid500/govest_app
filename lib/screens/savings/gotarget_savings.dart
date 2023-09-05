import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/savings/preview_savings.dart';


class GoTargetSavingsScreen extends StatefulWidget {
  const GoTargetSavingsScreen({Key? key}) : super(key: key);

  @override
  State<GoTargetSavingsScreen> createState() => _GoTargetSavingsScreenState();
}

class _GoTargetSavingsScreenState extends State<GoTargetSavingsScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 20.sp, left: 20.sp, top: 50.sp, bottom: 20.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close, color: Color(0xff3B5AFB),),
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
              Image.asset('assets/images/Big Naira.png', height: 16.sp,),
              SizedBox(width: 10.sp,),
              Text("200,000.00", style: TextStyle(fontSize: 24.sp, fontFamily: 'Poppins', fontWeight: FontWeight.w700),)
            ],
           ),
           SizedBox(height: 5.sp,
           child: Divider(
            thickness: 1.sp,
            color: Color(0xff000000),
           ),),
           SizedBox(height: 5.sp,),
           Row(
            children: [
                  Icon(Icons.check_circle, color: Color(0xff0EB51F),),
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
            ]
           ),
           SizedBox(height: 30.sp,),
           Text("Set Title for your Target", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12.sp, color: Color(0xff979797)),),
           SizedBox(height: 20.sp),
          Text("Wedding Aid", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
          SizedBox(height: 20.sp,
           child: Divider(
            thickness: 1.sp,
            color: Color(0xff000000),
           ),),
           SizedBox(height: 25.sp,),
           Text("How do you want to safe?", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp, fontFamily: 'Poppins', color: Color(0xff979797)),),
           SizedBox(height: 15.sp),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 59.sp,
                width: 100.sp,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(child: Text("Daily", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, color: Color(0xffffffff), fontWeight: FontWeight.w700),)),
              ),
              Container(
                height: 59.sp,
                width: 100.sp,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Color(0xff3B5AFB))
                ),
                child: Center(child: Text("Weekly", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, color: Color(0xff3B5AFB), fontWeight: FontWeight.w700),)),
              ),
              Container(
                height: 59.sp,
                width: 100.sp,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Color(0xff3B5AFB))
                ),
                child: Center(child: Text("Monthly", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, color: Color(0xff3B5AFB), fontWeight: FontWeight.w700),)),
              ),
            ],
           ),
           SizedBox(height: 25.sp,),
           Text("How do you want to safe?", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp, fontFamily: 'Poppins', color: Color(0xff979797)),),
           SizedBox(height: 10.sp),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 59.sp,
                width: 120.sp,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 15.sp,
                      width: 15.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xffffffff)
                      ),
                    ),
                    Text("AutoSave", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)
                  ],
                ),
              ),
              SizedBox(width: 20.sp,),
              Container(
                height: 59.sp,
                width: 120.sp,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: Color(0xff3B5AFB))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 15.sp,
                      width: 15.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff3B5AFB)
                      ),
                    ),
                    Text("Manual", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),)
                  ],
                ),
              )
            ],
           ),
           SizedBox(height: 80.sp,),
           GestureDetector(
            onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>PreviewSavingsScreen())
            );
          },
             child: Container(
              height: 60.sp,
              width: 329.sp,
              decoration: BoxDecoration(
                color: Color(0xff3B5AFB),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Text("CONTINUE", style: TextStyle(fontFamily: 'Poppins', fontSize: 20.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
             ),
           )
          ],
        ),
      ),
    );
  }
}
