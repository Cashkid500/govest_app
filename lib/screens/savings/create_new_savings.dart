import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/safelock/gosafe_lock.dart';


class CreateNewSavingsScreen extends StatefulWidget {
  const CreateNewSavingsScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewSavingsScreen> createState() => _CreateNewSavingsScreenState();
}

class _CreateNewSavingsScreenState extends State<CreateNewSavingsScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.close, color: Color(0xff3B5AFB), size: 40.sp,),
                  Icon(Icons.info, color: Color(0xff3B5AFB), size: 40.sp,),
                ],
              ),
              SizedBox(height: 70.sp,),
              Center(
                child: Container(
                  width: 200.sp,
                  height: 200.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: Color(0xff3B5AFB),
                  ),
                  child: Image.asset("assets/images/Readings.png"),
                ),
              ),
              SizedBox(height: 20.sp,),
              Text(
                "Savings Discipline",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.sp,),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 40.sp,),
                  child: Text(
                    "Save with discipline towards a\n specific goal or target. Earn interests\n daily, weekly or monthly.",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.sp,),
              Image.asset("assets/images/Scroll.png"),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                height: 66.sp,
                width: 278.sp,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    "CREATE GOSAVINGS",
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.sp,),
              GestureDetector(
                 onTap: () {
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context) =>GoSafelockScreen())
              );
            },
                child: Container(
                  height: 66.sp,
                  width: 278.sp,
                  decoration: BoxDecoration(
                    color: Color(0xff0EB51F),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CREATE GOSAFE",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 20.sp,),
                      Icon(Icons.lock, color: Color(0xffffffff),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

