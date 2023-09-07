import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/asset_path.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                Icon(Icons.chevron_left,size: 40,color: Colors.white,),
                SizedBox(height: 10.sp,),
                Center(child: Text("Edit Profile", style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontSize: 24.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
                SizedBox(height: 10.sp,),
                Center(child: Image.asset("assets/images/Profile Image.png")),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: Text(
                    "Ganni West",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoVestAssetsPath.govestFont,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 10.sp,),
                Center(
                  child: Container(
                    height: 34.sp,
                    width: 137.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Change avatar",
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff3B5AFB),
                            ),
                          ),
                          SizedBox(width: 10.sp,),
                          Icon(Icons.edit, color: Color(0xff3B5AFB),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                EditTextfield(name: "Email"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Username"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Phone Number"),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: "Date of Birth"),
                SizedBox(
                  height: 70.sp,
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
                      "Save Changes",
                      style: TextStyle(fontSize: 14.sp, fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),
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


class EditTextfield extends StatelessWidget {
  const EditTextfield({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Color(0xff979797), fontFamily: GoVestAssetsPath.govestFont),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10.sp),
        ),
      ),
    );
  }
}