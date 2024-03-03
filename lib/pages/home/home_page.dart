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
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
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
                  // Row(
                  //   children: [
                  //     Text(
                  //       'Oi, ',
                  //       style: GoogleFonts.outfit(
                  //         color: DefaultColors.back,
                  //         fontSize: 22.sp,
                  //         fontWeight: FontWeight.w400,
                  //       ),
                  //     ),
                  //     Obx(
                  //       () => Text(
                  //         '${authService.modelUser.value?.name}',
                  //         style: GoogleFonts.outfit(
                  //           color: DefaultColors.back,
                  //           fontSize: 22.sp,
                  //           fontWeight: FontWeight.w400,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: [
                        for (var i in quizes)
                          DefaultCard(
                            quiz: i,
                          ),
                      ],
                    ),
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
