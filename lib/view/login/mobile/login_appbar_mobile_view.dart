import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class LoginAppbarMobileView extends StatelessWidget {
  const LoginAppbarMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      centerTitle: true,
      elevation: 2,
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset("assets/images/flutter.png"),
      ),
     title: Text("ApyLog"),
    );
  }
}