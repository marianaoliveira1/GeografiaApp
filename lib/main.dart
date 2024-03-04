import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/firebase_options.dart';

import 'package:geografia/pages/splash/splash_page.dart';
import 'package:geografia/controller/auth_service.dart';
import 'package:geografia/routes/routes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());

    return ScreenUtilInit(
      designSize: const Size(380, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Geografia App',
        debugShowCheckedModeBanner: false,
        routes: Routes.routes,
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        ),
        home: const SpashPage(),
      ),
    );
  }
}
