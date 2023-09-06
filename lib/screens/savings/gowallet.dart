import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/profile/add_bank.dart';


class GoWalletScreen extends StatefulWidget {
  const GoWalletScreen({Key? key}) : super(key: key);

  @override
  State<GoWalletScreen> createState() => _GoWalletScreenState();
}

class _GoWalletScreenState extends State<GoWalletScreen> {
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 20.sp, left: 20.sp, top: 50.sp, bottom: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Go Wallet",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff3B5AFB),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                "Tap any of the options below to quick save immeditely",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Amount to Save",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xff979797),
                ),
              ),
              SizedBox(
                height: 10.sp,
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/Big Naira.png', height: 16.sp,),
                SizedBox(width: 10.sp,),
                Text("20,000.00", style: TextStyle(fontSize: 24.sp, fontFamily: 'Poppins', fontWeight: FontWeight.w700),)
              ],
             ),
             SizedBox(height: 5.sp,
             child: Divider(
              thickness: 1.sp,
              color: Color(0xff000000),
             ),),
             SizedBox(height: 5.sp,),
             Row(
              children: [
                    Icon(Icons.check_circle, color: Color(0xff0EB51F),),
                    SizedBox(
                      width: 5.sp,
                    ),
                    Text(
                      "Type in amount you would like to lock",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff979797)),
                    ),
              ]
             ),
             SizedBox(height: 30.sp,),
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff979797),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchFunction,
                      onChanged: (value) {
                        setState(() {
                          _switchFunction = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      "I hereby acknowledge this SafeLock CANNOT be broken once it has been created.",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
             
             SizedBox(height: 20.sp,),
             SizedBox(
                height: 30.sp,
              ),
              Text(
                "Select Payment Method",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: Color(0xff979797)),
              ),
              SizedBox(height: 15.sp,),
              Text("Tap any of the options below to quick save immediately", style: TextStyle(fontFamily: 'Poppins', fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
              SizedBox(height: 30.sp,),
             Container(
              height: 60.sp,
              width: 329.sp,
              decoration: BoxDecoration(
                color: Color(0xff0EB51F),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Text("Use Go Wallet (N20,000)", style: TextStyle(fontFamily: 'Poppins', fontSize: 16.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
             ),
             SizedBox(height: 30.sp,),
             Container(
              height: 60.sp,
              width: 329.sp,
              decoration: BoxDecoration(
                color: Color(0xff3B5AFB),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Center(child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Mastercard.png'),
                  SizedBox(width: 10.sp,),
                  Text("Use Card with Paystack", style: TextStyle(fontFamily: 'Poppins', fontSize: 16.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),),
                ],
              )),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
