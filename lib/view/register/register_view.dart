import 'package:admin_dashboard/core/base/base_view.dart';
import 'package:admin_dashboard/view/register/web/register_web_view.dart';
import 'package:flutter/material.dart';

// class RegisterView extends StatefulWidget {
//   const RegisterView({Key? key}) : super(key: key);
//
//   @override
//   State<RegisterView> createState() => _RegisterViewState();
// }
//
// class _RegisterViewState extends State<RegisterView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DeviceTypeWidget(
//         mobileWidget:  LoginMobileView(),
//         webWidget: LoginWebView(),
//       ),
//     );
//   }
// }


class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DeviceTypeWidget(
        webWidget: RegisterWebView(),
      ),
    );
  }
}



