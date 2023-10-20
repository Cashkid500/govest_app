import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/profile/profile_account.dart';
import '../constants/asset_path.dart';
import 'edit_profile.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  bool _isSecurePassword = true;
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
            padding: EdgeInsets.only(
                left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ProfileAccountScreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25.sp,
                      color: whiteText,
                    )),
                SizedBox(
                  height: 30.sp,
                ),
                Center(
                    child: Text(
                  GoVestText.changePassword,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: whiteText),
                )),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: SizedBox(
                    width: 300.sp,
                    child: Text(
                      GoVestText.distinctPassword,
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
                    obscureText: _isSecurePassword,
                    decoration: InputDecoration(
                        hintText: GoVestText.currentPassword,
                        hintStyle: TextStyle(
                            color: spanishGrey,
                            fontFamily: GoVestAssetsPath.govestFont),
                        contentPadding: EdgeInsets.all(10.sp),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isSecurePassword = !_isSecurePassword;
                          });
                        },
                        icon: _isSecurePassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        iconSize: 20.sp,
                        color: hooloovooBlue,
                      ),
                            ),
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: GoVestText.newPassword),
                SizedBox(
                  height: 20.sp,
                ),
                EditTextfield(name: GoVestText.confirmNewPassword),
                SizedBox(
                  height: 90.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProfileAccountScreen()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 42.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Text(
                        GoVestText.changePassword,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontFamily: GoVestAssetsPath.govestFont,
                            fontWeight: FontWeight.w700,
                            color: hooloovooBlue),
                      ),
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
