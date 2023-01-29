import 'package:admin_dashboard/view/login/mobile/login_appbar_mobile_view.dart';
import 'package:admin_dashboard/view/login/mobile/login_content_mobile_view.dart';
import 'package:flutter/material.dart';

class LoginMobileView extends StatelessWidget {
  const LoginMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [LoginAppbarMobileView(), LoginContentMobileView()],
    );
  }
}