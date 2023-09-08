import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_app/screens/constants/color_constants.dart';
import '../constants/asset_path.dart';



class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15.sp, right: 15.sp, top: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon( Icons.arrow_back_ios,color: hooloovooBlue,),
                    SizedBox(
                      height: 15.sp,
                    ),
                    Text('Transaction History', style: TextStyle(fontFamily: GoVestAssetsPath.govestFont, fontWeight: FontWeight.w700, fontSize:  22, color: hooloovooBlue),)
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
              TextField(
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30.sp, vertical: 18.sp),
          isCollapsed: true,
          labelText: 'Quick find transaction',
          labelStyle: TextStyle(
              color: blackOak,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              fontFamily: GoVestAssetsPath.govestFont),
          filled: true,
          fillColor: superSilver,
          prefixIcon: Icon( Icons.search, ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: whiteText,),),
        ),
          ),
          SizedBox(
        height: 30.sp,
          ),
            Invest(),
          SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
            SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
          SizedBox(
        height: 15.sp,
          ),
          Invest(),
          SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
          SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
          SizedBox(
        height: 15.sp,
          ),
          Invest(),
          SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
          SizedBox(
        height: 15.sp,
          ),
          Withdraw(),
      SizedBox(
      height: 25.sp,
    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Withdraw extends StatelessWidget {
  const Withdraw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                  color: springForth.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Icon( Icons.trending_down, ),
            ),
            SizedBox(
              width: 20.sp,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 'Withdrawal from savings',
                  style: TextStyle(
                    color: hooloovooBlue,
                    fontSize: 12.sp,
                    fontFamily: GoVestAssetsPath.govestFont,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                 '12-Dec-2021',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: GoVestAssetsPath.govestFont,
                      fontWeight: FontWeight.w500,
                      color: spanishGrey),
                )
              ],
            ),
          ],
        ),
        Text(
          '#50,000.00',
          style: TextStyle(
            fontSize: 14.sp,
            fontFamily: GoVestAssetsPath.govestFont,
            fontWeight: FontWeight.w700,
            color: springForth,
          ),
        )
      ],
    );
  }
}

class Invest extends StatelessWidget {
  const Invest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
    children: [
      Container(
        height: 45.sp,
        width: 45.sp,
        decoration: BoxDecoration(
            color: blobfish,
            borderRadius: BorderRadius.circular(10.r)),
        child: Icon( Icons.trending_up, ),
      ),
      SizedBox(
        width: 20.sp,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invest in Fish farming',
            style: TextStyle(
              color: hooloovooBlue,
              fontSize: 12.sp,
              fontFamily: GoVestAssetsPath.govestFont,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
           '12-Dec-2021',
            style: TextStyle(
                fontSize: 10.sp,
                fontFamily: GoVestAssetsPath.govestFont,
                fontWeight: FontWeight.w500,
                color: spanishGrey),
          )
        ],
      ),
    ],
        ),
        Text(
    '#250,000.00',
    style: TextStyle(
      fontSize: 14.sp,
      fontFamily: GoVestAssetsPath.govestFont,
      fontWeight: FontWeight.w700,
      color: boyRed,
    ),
        )
      ],
    );
  }
}
