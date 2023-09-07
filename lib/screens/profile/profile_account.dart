import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/profile/change_password.dart';
import 'package:govest_app/screens/profile/edit_profile.dart';
import 'package:govest_app/screens/profile/next_of_kin.dart';

import '../constants/asset_path.dart';
import '../login/login.dart';

class ProfileAccountScreen extends StatefulWidget {
  const ProfileAccountScreen({Key? key}) : super(key: key);

  @override
  State<ProfileAccountScreen> createState() => _ProfileAccountScreenState();
}

class _ProfileAccountScreenState extends State<ProfileAccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(child: Image.asset("assets/images/Profile.png")),
              SizedBox(
                height: 5.sp,
              ),
              Center(
                child: Text(
                  "Ganni West",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Profile Settings",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff979797),
                  fontFamily: GoVestAssetsPath.govestFont,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 197.sp,
                decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(top: 20.sp, left: 15.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Icon(
                                Icons.person_outline,
                                size: 20,
                                color: Color(0xff3B5AFB),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.sp,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                  onTap: () {
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>EditProfileScreen())
                                  );
                                  },
                                    child: Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Text(
                                    "Update your personal informations.",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffBFBFE3),
                                      fontFamily: GoVestAssetsPath.govestFont,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 29.sp,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                              child: Icon(
                                Icons.sentiment_satisfied,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                  onTap: () {
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>NextOfKinScreen())
                                  );
                                  },
                                    child: Text(
                                      "Next of Kin Update",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5.sp),
                                  Text(
                                    "Update your closest relative information.",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffBFBFE3),
                                      fontFamily: GoVestAssetsPath.govestFont,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10.sp,
                              ),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                              child: Image.asset(
                                'assets/images/Wallet3.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "KYC Update",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Text(
                                    "Update your valid means of Identification.",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      color: Color(0xffBFBFE3),
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.chevron_right,color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "General Settings",
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoVestAssetsPath.govestFont,
                    color: Color(0xff979797)),
              ),
              Container(
                height: 155.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20.sp),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                                child: Icon(
                              Icons.lock,
                              size: 25.sp,
                              color: Colors.white,
                            )),
                          ),
                          SizedBox(
                            width: 20.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Update Authentication",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  GestureDetector(
                                  onTap: () {
                                  Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext context) =>ChangePasswordScreen())
                                  );
                                  },
                                    child: Text(
                                      "Change password",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontFamily: GoVestAssetsPath.govestFont,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffBFBFE3),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 60.sp,
                              ),
                              Icon(Icons.chevron_right,color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40.sp,
                            width: 40.sp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: Center(
                              child: Icon(Icons.headset,size: 25,color: Colors.white,),
                            ),
                          ),
                          SizedBox(width: 20.sp,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Help and Support",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Text(
                                    "Contact support and the help desk",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      fontFamily: GoVestAssetsPath.govestFont,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffBFBFE3),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20.sp,
                              ),
                              Icon(Icons.chevron_right,color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
