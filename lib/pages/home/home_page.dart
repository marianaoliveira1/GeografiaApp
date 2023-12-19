// ignore_for_file: unnecessary_string_interpolations

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/controller/auth_service.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_card.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    final authService = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: GoogleFonts.outfit(color: DefaultColors.back, fontSize: 22.sp, fontWeight: FontWeight.w400),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 90.sp,
                  color: Colors.white,
                ),
              ),
              Text('${currentUser!.email}', style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 12.sp, fontWeight: FontWeight.w400)),
              IconButton(
                onPressed: authService.signOut,
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Oi, ',
                        style: GoogleFonts.outfit(
                          color: DefaultColors.back,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Obx(
                        () => Text(
                          '${authService.modelUser.value?.name}',
                          style: GoogleFonts.outfit(
                            color: DefaultColors.back,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const DefaultCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
