import 'package:admin_dashboard/core/widget/auto_size_text_widget_atomic.dart';
import 'package:admin_dashboard/core/widget/custom_login_text_button_widget.dart';
import 'package:admin_dashboard/core/widget/sizedbox_widget_atomic.dart';
import 'package:admin_dashboard/core/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginRightContentWebView extends StatelessWidget {
  const LoginRightContentWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.center,
        width: 70.w,
        height: 100.h,
        child: Container(
          width: 20.w,
          height: 45.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeTextWidget(text: "Giriş Yap",fontSize: 3.sp,fontWeight: FontWeight.bold),
                AutoSizeTextWidget(text: "Güvenli hesabınızla giriş yapın"),
                SizedboxWidget(),
                TextFieldWidget(labelText: 'Username'),
                TextFieldWidget(labelText: 'Password', obscureText: true),
                SizedboxWidget(),
                CustomLoginTextButtonWidget(text: 'Şifremi Unuttum?', buttonText: 'Buraya Tıklayınız'),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  width:20.w,
                  height: 3.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Giriş Yap"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.5.h),
                      ),
                    ),
                  ),
                ),
                CustomLoginTextButtonWidget(text: 'Hesabınız yok mu?', buttonText: 'Sign Up'),
              ],
            ),
          ),
        ));
  }
}
