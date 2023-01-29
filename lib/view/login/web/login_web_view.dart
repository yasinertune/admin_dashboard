import 'package:admin_dashboard/view/login/web/login_left_content_web_view.dart';
import 'package:admin_dashboard/view/login/web/login_right_content_web_view.dart';
import 'package:flutter/material.dart';

class LoginWebView extends StatelessWidget {
  const LoginWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [LoginLeftContentWebView(), LoginRightContentWebView()],
    );
  }
}
