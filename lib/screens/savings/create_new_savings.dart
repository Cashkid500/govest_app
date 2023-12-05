import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/asset_path.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import 'package:govest_app/screens/constants/text_constants.dart';
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
                  Icon(Icons.close, color: hooloovooBlue, size: 40.sp,),
                  Icon(Icons.info, color: hooloovooBlue, size: 40.sp,),
                ],
              ),
              SizedBox(height: 70.sp,),
              Center(
                child: Container(
                  width: 200.sp,
                  height: 200.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: hooloovooBlue,
                  ),
                  child: Image.asset(GoVestAssetsPath.readings),
                ),
              ),
              SizedBox(height: 20.sp,),
              Text(
                GoVestText.savingsDiscipline,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: GoVestAssetsPath.govestFont,
                  color: blackText,
                ),
              ),
              SizedBox(height: 20.sp,),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 40.sp,),
                  child: Text(
                    GoVestText.save,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: blackText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.sp,),
              Image.asset(GoVestAssetsPath.scroll),
              SizedBox(
                height: 30.sp,
              ),
              Container(
                height: 66.sp,
                width: 278.sp,
                decoration: BoxDecoration(
                  color: hooloovooBlue,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(
                  child: Text(
                    GoVestText.createGoSavings,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: GoVestAssetsPath.govestFont,
                      color: whiteText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.sp,),
              GestureDetector(
                 onTap: () {
                   Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context) =>const GoSafelockScreen())
              );
            },
                child: Container(
                  height: 66.sp,
                  width: 278.sp,
                  decoration: BoxDecoration(
                    color: springForth,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        GoVestText.createGoSave,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: GoVestAssetsPath.govestFont,
                          fontWeight: FontWeight.w700,
                          color: whiteText,
                        ),
                      ),
                      SizedBox(width: 20.sp,),
                      Icon(Icons.lock, color: whiteText,),
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

