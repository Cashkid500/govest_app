import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/profile/change_password.dart';
import 'package:govest_app/screens/profile/edit_profile.dart';
import '../constants/asset_path.dart';
import '../login/login.dart';
import 'transaction_history.dart';

class NextOfKinScreen extends StatefulWidget {
  const NextOfKinScreen({Key? key}) : super(key: key);

  @override
  State<NextOfKinScreen> createState() => _NextOfKinScreenState();
}

class _NextOfKinScreenState extends State<NextOfKinScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(left:15.sp, right: 15.sp, top: 40.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>TransactionHistoryScreen())
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: hooloovooBlue,
                  ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add Next of Kin',
                    style: TextStyle(
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      color: hooloovooBlue,
                    ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40.sp,
                ),
                NextofKinTextField(hint1: 'First Name'),
                SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Surname'),
                  SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Phone Number'),
                  SizedBox(
                  height: 20.sp,
                ),
                NextofKinTextField(hint1: 'Email Address'),
                  SizedBox(
                  height: 150.sp,
                ),
              Center(
               child: Container(
                height: 45.sp,
                width: 320.sp,
                decoration: BoxDecoration(
                  color: hooloovooBlue,
                  borderRadius: BorderRadius.circular(8.r)
                ),
               child: Center(
                 child: Text('Add Next of Kin', 
                 style: TextStyle(
                  fontFamily: GoVestAssetsPath.govestFont,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: whiteText
                 ),
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

class NextofKinTextField extends StatelessWidget {
  const NextofKinTextField({
    super.key,
    required this.hint1,
  });

  final String hint1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350.sp,
        child: TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              contentPadding:
              EdgeInsets.symmetric(horizontal: 20.sp, vertical: 25.sp),
              isCollapsed: true,
              labelText: hint1,
              labelStyle: TextStyle(
              color: widowmaker,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              fontFamily: GoVestAssetsPath.govestFont),
              filled: true,
              fillColor: whiteText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: widowmaker,width: 1.3
                ),
              ),
            ),
          ),
      ),
    );
  }
}
