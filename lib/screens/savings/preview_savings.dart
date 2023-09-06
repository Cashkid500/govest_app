import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/savings/gosave.dart';


class PreviewSavingsScreen extends StatefulWidget {
  const PreviewSavingsScreen({Key? key}) : super(key: key);

  @override
  State<PreviewSavingsScreen> createState() => _PreviewSavingsScreenState();
}

class _PreviewSavingsScreenState extends State<PreviewSavingsScreen> {
  bool _switchValue = false;
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
              Icon(Icons.close, color: Color(0xff3B5AFB),),
              SizedBox(
                height: 20.sp,
              ),
              Text(
                "Finish settings up",
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
                "Finalize your target savings settings",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
             Container(
                height: 76.sp,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff0EB51F),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/White Wallet.png", height: 36.sp, width: 36.sp),
                      SizedBox(
                        width: 20.sp,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total target of N50,000",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 230,
                            child: Text(
                              "Setup a savings target and get paid every month for upto 8%",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(0.6),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            SizedBox(height: 30.sp,),
             Text("Preferred Amont to save on a manual basis", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12.sp, color: Color(0xff979797)),),
             SizedBox(height: 20.sp),
            Text("3,000", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
            SizedBox(height: 20.sp,
             child: Divider(
              thickness: 1.sp,
              color: Color(0xff000000),
             ),),
             SizedBox(height: 25.sp,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start Date", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12.sp, color: Color(0xff979797)),),
                Padding(
                  padding: EdgeInsets.only(right: 40.sp),
                  child: Text("Withdrawal Date", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 12.sp, color: Color(0xff979797)),),
                )
              ],
             ),
             SizedBox(height: 15.sp,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12 Sep 2021", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
                Icon(Icons.calendar_today, color: Color(0xff979797),),
                Text("12 Dec 2021", style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16.sp, color: Color(0xff000000)),),
                Icon(Icons.calendar_today, color: Color(0xff979797),),
              ],
             ),
             SizedBox(height: 15.sp,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1.sp,
                  width: 140.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff000000))
                  ),
                ),
                SizedBox(height: 10.sp,),
                Container(
                  height: 1.sp,
                  width: 140.sp,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff000000))
                  ),
                ),
              ],
             ),
             SizedBox(height: 5.sp,),
             RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Your target savings will end in",
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                    fontFamily: 'Poppins',
                  ),
                ),
                TextSpan(
                  text: "120 days",
                  style: TextStyle(
                    color: Color(0xff3B5AFB),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: "with",
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: "12%",
                  style: TextStyle(
                    color: Color(0xff0EB51F),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 10.sp,
                  ),
                ),
                TextSpan(
                  text: "return rate",
                  style: TextStyle(
                    color: Color(0xff979797),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    fontSize: 10.sp,
                  ),
                ),
              ],
            ),
          ),
        SizedBox(height: 15.sp,),
              Text(
                "Select source of fund",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    color: Color(0xff979797)),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Go Wallet - NGN 200,000',
                    labelStyle: TextStyle(fontFamily: 'Popppins', fontSize: 18.sp, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                    suffixIcon: Icon(
                      Icons.expand_more,
                      color: Color(0xff979797),
                      size: 30.sp,
                    ),
                    //
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.sp,
                    height: 20.sp,
                    decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 260.sp,
                    child: Text(
                      "I authorize GoVEST to safelock NGN200,000 immediately and return it in full on Wednesday.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.sp,
              ),
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
              SizedBox(height: 10.sp,),
              GestureDetector(
                onTap: () {
                 Navigator.of(context).push(
                 MaterialPageRoute(builder: (BuildContext context) =>GoSaveScreen())
            );
          },
                child: Container(
                height: 60.sp,
                width: 329.sp,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(10.r)
                ),
                child: Center(child: Text("CREATE GO TARGET", style: TextStyle(fontFamily: 'Poppins', fontSize: 20.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
                           ),
              )
            ],
          ),
        ),
      ),
    );
  }
}