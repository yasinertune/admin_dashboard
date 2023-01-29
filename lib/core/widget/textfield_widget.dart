import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({Key? key,
  required this.labelText,this.obscureText,this.maxLines}) : super(key: key);

  String labelText;
  bool? obscureText;
  int? maxLines;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: 0.6.h),
      child:  TextField(
        obscureText: obscureText??false,
        maxLines: maxLines??1,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}
