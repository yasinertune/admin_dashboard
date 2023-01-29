import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DeviceTypeWidget extends StatelessWidget {
  DeviceTypeWidget({Key? key, required this.webWidget, this.mobileWidget}) : super(key: key);

  Widget? mobileWidget;
  Widget webWidget;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: webWidget?? SizedBox.shrink(),
      secondChild: mobileWidget ?? Container(),
      crossFadeState: SizerUtil.width > 600 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration:  SizerUtil.width > 600 ? Duration(seconds: 1): Duration( milliseconds: 100)
    );
  }
}


