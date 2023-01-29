import 'package:admin_dashboard/view/login/login_view.dart';
import 'package:admin_dashboard/view/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,screenType){
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3:true
          ),
          title: 'Flutter Demo',
          home: RegisterView(),
        );
      },
    );
  }
}
