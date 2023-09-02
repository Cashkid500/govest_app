import 'package:flutter/material.dart';
import 'package:govest_app/screens/signup/signup.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 20.0),
                child: Text("Skip", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff3B5AFB)),),
              ),
              SizedBox(height: 20,),
              Center(child: Image.asset('assets/images/Page View1.png')),
              SizedBox(height: 30,),
              Text("Get in a simple way of increasing your wealth", style: TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff3B5AFB)),
              textAlign: TextAlign.center,),
              SizedBox(height: 90,),
              Center(
                child: Container(
                  height: 54,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(82),
                  ),
                  child: Center(
                    child: Text("Get Started", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xffffffff)),
                    ),
                  ),
                ),
              )
            ],
          ),

          // Onboarding 2
          Container(
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
             decoration: BoxDecoration(
             color: Color(0xff3b5afb),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, right: 20.0),
                  child: Text("Skip", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffffffff)),),
                ),
                SizedBox(height: 20,),
                Center(child: Image.asset('assets/images/Page View2.png')),
                SizedBox(height: 30,),
                Text("Get access to best investment assets", style: TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xffffffff)),
                textAlign: TextAlign.center,),
                SizedBox(height: 90,),
                Center(
                  child: Container(
                    height: 54,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(82),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("Next", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_right_alt, color: Color(0xff3B5AFB),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

          // Onboarding 3
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, right: 20.0),
                child: Text("Skip", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff3B5AFB)),),
              ),
              SizedBox(height: 20,),
              Center(child: Image.asset('assets/images/Page View3.png')),
              SizedBox(height: 30,),
              Text("Get in a simple way of increasing your wealth", style: TextStyle(fontFamily: 'Poppins', fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff3B5AFB)),
              textAlign: TextAlign.center,),
              SizedBox(height: 90,),
              Center(
                child: GestureDetector(
                  onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) =>SignupScreen())
            );
          },
                  child: Container(
                    height: 54,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(82),
                    ),
                    child: Center(
                      child: Text("Create an account", style: TextStyle(fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
