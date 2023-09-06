import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'edit_profile.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xff3B5AFB)),
          child: Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.chevron_left,size: 40.sp,color: Colors.white,),
                SizedBox(height: 20.sp,),
                Center(
                    child: Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                      color: Colors.white),
                )),
                SizedBox(height: 10.sp,),
                Center(
                  child: SizedBox(
                    width: 300.sp,
                    child: Text(
                      "Your new password must be different from your old password.",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 50.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Current Password",
                        hintStyle: TextStyle(color: Color(0xff979797)),
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.visibility_off,
                            size: 20, color: Color(0xff3B5AFB))),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: "Enter New Password"),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: "Confirm New Password"),
                SizedBox(
                  height: 90.sp,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 42.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Change Password",
                      style:
                          TextStyle(fontSize: 14.sp, fontFamily: 'Poppins', fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
