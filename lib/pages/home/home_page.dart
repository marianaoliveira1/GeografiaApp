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
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  color: DefaultColors.roxo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70.r),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    top: 45.h,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Quiz de Geografia',
                        style: GoogleFonts.inconsolata(
                          color: DefaultColors.branco,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Oi, ',
                            style: GoogleFonts.roboto(
                              color: DefaultColors.branco.withOpacity(.7),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Obx(
                            () => Text(
                              '${authService.modelUser.value?.name}',
                              style: GoogleFonts.roboto(
                                color: DefaultColors.branco.withOpacity(.7),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Vamos começar um jogo!',
                            style: GoogleFonts.roboto(
                              color: DefaultColors.branco,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Column(
                    children: [
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
