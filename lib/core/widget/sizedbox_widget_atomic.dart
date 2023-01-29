import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizedboxWidget extends SizedBox {
  SizedboxWidget({
    Key? key,
    double? width,
    double? height,
    Widget? child,
  }) : super(
          key: key,
          width: width,
          height: height?? 2.h,
          child: child,
        );
}