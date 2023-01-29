import 'package:admin_dashboard/core/base/base_view.dart';
import 'package:admin_dashboard/view/login/mobile/login_mobile_view.dart';
import 'package:admin_dashboard/view/login/web/login_web_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeviceTypeWidget(
        mobileWidget:  LoginMobileView(),
        webWidget: LoginWebView(),
      ),
      );
  }
}
