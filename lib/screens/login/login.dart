import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/investment/investment_package_grid.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 35.sp, left: 10.sp, right: 10.sp),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25.sp,
                          fontFamily: 'Poppins',
                        ),
                        children: [
                          TextSpan(
                            text: "Go",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                          TextSpan(
                            text: "Vest",
                            style: TextStyle(
                              color: Color(0xff0EB51F),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
            SizedBox(
              height: 2.sp,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.sp,
              ),
              child: Text(
                "Welcome back,",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text(
                "Login to your Account",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffffffff)),
              ),
            ),
            SizedBox(height: 20.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Container(
                height: 50.sp,
                width: 320.sp,
                  decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(5.r)),
                  child: TextField(
              decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.sp),
                    labelText: 'Email address',
                    labelStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xffc4c4c4),
                    ),
                  )),
              ),
            ),
            SizedBox(height: 20.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Container(
                height: 50.sp,
                width: 320.sp,
                  decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(5.r)),
                  child: TextField(
              decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.sp),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffc4c4c4),
                    ),
                    suffixIcon: Icon(Icons.visibility_off, color: Color(0xff3B5AFB),)
                  )),
              ),
            ),
            SizedBox(height: 5.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: Text("Forgot Password?", style: TextStyle(fontFamily: 'Poppins', fontSize: 14.sp, fontWeight: FontWeight.w500, color: Color(0xff000000)),),
            ),
            SizedBox(height: 320.sp,),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
              child: GestureDetector(
                onTap: () {
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context) =>InvestmentPackageGridScreen())
              );
            },
                child: Container(
                  height: 50.sp,
                    width: 320.sp,
                      decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5.r)),
                  child: Center(child: Text("SIGN ME IN", style: TextStyle(fontFamily: 'Poppins', fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),)),
                ),
              ),
            ),
            SizedBox(height: 20.sp,),
                Center(
                  child: RichText(
                    text: TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              height: 1.8.sp,
                            ),
                            children: [
                              TextSpan(
                                text: "New to GoVest? ",
                                style: TextStyle(color: Color(0xffffffff)),
                              ),
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                  ),
                )
          ]
        ),
      ),
    );
  }
}
