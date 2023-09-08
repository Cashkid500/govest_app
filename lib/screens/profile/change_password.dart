import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import '../constants/asset_path.dart';
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
          decoration: BoxDecoration(color: hooloovooBlue),
          child: Padding(
            padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.chevron_left,size: 40.sp,color: whiteText,),
                SizedBox(height: 20.sp,),
                Center(
                    child: Text(
                  "Change Password",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: whiteText),
                )),
                SizedBox(height: 10.sp,),
                Center(
                  child: SizedBox(
                    width: 300.sp,
                    child: Text(
                      "Your new password must be different from your old password.",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w400,
                          color: whiteText),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 50.sp,
                  decoration: BoxDecoration(
                    color: whiteText,
                    borderRadius: BorderRadius.circular(5.r),
                    border: Border.all(color: whiteText),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Current Password",
                        hintStyle: TextStyle(color: spanishGrey, fontFamily: GoVestAssetsPath.govestFont),
                        contentPadding: EdgeInsets.all(10.sp),
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.visibility_off,
                            size: 20.sp, color: hooloovooBlue)),
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
                    color: whiteText,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Center(
                    child: Text(
                      "Change Password",
                      style:
                          TextStyle(fontSize: 14.sp, fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, color: hooloovooBlue),
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
