import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) => MaterialApp(
        title: 'Beyond Dating',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
    );
  }
}

class HomePage extends StatelessWidget {
  final darkTextColor = const Color.fromARGB(255, 236, 18, 123);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final backgroundColor = const Color(0xff1F2326);
  final pinkColor = const Color(0xffF11A82);

  const HomePage({super.key});

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Colors.transparent, width: 0),
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          filled: true,
          fillColor: textFieldColor,
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 8.sp,
            fontWeight: FontWeight.w400,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/logo.png",
                      width: 80.w,
                      height: 80.h,
                    ),
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Beyond",
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      ),
                      Text(
                        "Dating",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: lightTextColor,
                        ),
                      )
                    ],
                  ),
                  Text("The Best Dating, Friendship & Interest matching",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: pinkColor,
                      )),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Sign Up to Beyond Dating",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: darkTextColor,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Wrap(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              getTextField(hint: "Full Name"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Email"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Password"),
              SizedBox(
                height: 16.h,
              ),
              getTextField(hint: "Confirm Password"),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(darkTextColor),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h)),
                      textStyle: WidgetStateProperty.all(TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ))),
                  child: const Text("Create Account"),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Wrap(
                children: [
                  Text(
                    "By signing up to Beyond Dating you agree to our ",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    "terms and conditions",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: darkTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
