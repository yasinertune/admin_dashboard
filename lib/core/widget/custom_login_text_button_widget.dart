import 'package:admin_dashboard/core/widget/auto_size_text_widget_atomic.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomLoginTextButtonWidget extends StatelessWidget {
  CustomLoginTextButtonWidget({
    super.key,
    required this.text,
    required this.buttonText,
  });

  String text;
  String buttonText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AutoSizeTextWidget(text: text, fontSize: 1.sp),
          InkWell(
              onTap: () {}, child: AutoSizeTextWidget(text: buttonText, fontSize: 1.sp, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
