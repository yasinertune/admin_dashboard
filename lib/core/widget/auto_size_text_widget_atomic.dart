
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class AutoSizeTextWidget extends AutoSizeText {
  AutoSizeTextWidget({super.key,
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    int? maxLines,
  }) : super(
          text,
          maxLines: maxLines??1,
          style: TextStyle(
            fontSize: fontSize??2.sp,
            fontWeight: fontWeight??FontWeight.normal,
          ),
        );
}
