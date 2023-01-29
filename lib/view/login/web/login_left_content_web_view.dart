import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class LoginLeftContentWebView extends StatelessWidget {
  const LoginLeftContentWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.grey,
      padding: EdgeInsets.all(2.h),
      width: 30.w,
      height: 100.h,
      child: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(1.h)),
        child:
        Column(
          children: [
            Spacer(flex: 2),
            Expanded(
              child: Container(
                  width: 30.w,
                  child: Image.asset("assets/images/flutter.png")),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
