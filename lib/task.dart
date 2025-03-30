import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/router/app_router.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    // CustomButtonP
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
