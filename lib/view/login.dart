import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ContainerWidget(),
          Container(
            width:70.w,
            height: 100.h,
            color: Colors.blue,
            child: Text(""),
          ),
        ],
      ),
    );
  }
}


class ContainerWidget extends StatelessWidget {
   ContainerWidget({
    super.key,
     required this.widget
  });

  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.w,
      height: 100.h,
      color: Colors.red,
      child: Text(""),
    );
  }
}
