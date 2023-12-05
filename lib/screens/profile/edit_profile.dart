import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
import 'package:govest_app/screens/profile/profile_account.dart';

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
          decoration: BoxDecoration(color: hooloovooBlue),
          child: Padding(
            padding: EdgeInsets.only(
                left: 20.sp, right: 20.sp, top: 40.sp, bottom: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>const
                              ProfileAccountScreen()));
                    },
                    child: Icon(Icons.arrow_back_ios,
                        size: 25.sp, color: whiteText)),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                    child: Text(
                  GoVestText.editProfile,
                  style: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      color: whiteText),
                )),
                SizedBox(
                  height: 10.sp,
                ),
                Center(child: Image.asset(GoVestAssetsPath.profileImage)),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: Text(
                    GoVestText.gW,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoVestAssetsPath.govestFont,
                        color: whiteText),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Center(
                  child: Container(
                    height: 34.sp,
                    width: 137.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            GoVestText.changeAvatar,
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontFamily: GoVestAssetsPath.govestFont,
                              fontWeight: FontWeight.w700,
                              color: hooloovooBlue,
                            ),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Icon(
                            Icons.edit,
                            color: hooloovooBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.sp,
                ),
                EditTextfield(name: GoVestText.email),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: GoVestText.username),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: GoVestText.phoneNumber2),
                SizedBox(
                  height: 15.sp,
                ),
                EditTextfield(name: GoVestText.birthDate),
                SizedBox(
                  height: 70.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>const
                            ProfileAccountScreen()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 42.sp,
                    decoration: BoxDecoration(
                      color: whiteText,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        GoVestText.saveChanges,
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
        color: whiteText,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(
              color: spanishGrey, fontFamily: GoVestAssetsPath.govestFont),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10.sp),
        ),
      ),
    );
  }
}
