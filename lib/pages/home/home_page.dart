// ignore_for_file: unnecessary_string_interpolations

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/controller/auth_service.dart';
import 'package:geografia/pages/home/drawer/default_drawer.dart';
import 'package:geografia/questios/list_questios.dart';
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
      backgroundColor: DefaultColors.bege,
      drawer: DefaultDrawer(
        currentUser: currentUser,
        authService: authService,
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
                        style: GoogleFonts.roboto(
                          color: DefaultColors.back.withOpacity(.7),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Obx(
                        () => Text(
                          '${authService.modelUser.value?.name}',
                          style: GoogleFonts.roboto(
                            color: DefaultColors.back.withOpacity(.7),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Vamos começar',
                    style: GoogleFonts.roboto(
                      color: DefaultColors.back,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Expanded(
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 1.2,
                      ),
                      children: [
                        for (var i in quizes)
                          DefaultCard(
                            quiz: i,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
