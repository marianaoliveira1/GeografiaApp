// ignore_for_file: unnecessary_string_interpolations

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/controller/auth_service.dart';
import 'package:geografia/pages/home/drawer/default_drawer.dart';
import 'package:geografia/questios/list_questios.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_card.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final currentUser = FirebaseAuth.instance.currentUser;
  var search = '';

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        search = searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: DefaultColors.branco,
      drawer: DefaultDrawer(
        currentUser: currentUser,
        authService: authService,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: DefaultColors.defaultLinearGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 50.h,
                left: 20.h,
                right: 20.h,
              ),
              height: 200.h,
              decoration: BoxDecoration(
                gradient: DefaultColors.defaultLinearGradient,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Oi ',
                        style: GoogleFonts.roboto(
                          color: DefaultColors.branco,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ).animate().fade(duration: 1500.ms).slideY(),
                      // Obx(
                      //   () => Text(
                      //     '${authService.modelUser.value?.name}',
                      //     style: GoogleFonts.roboto(
                      //       color: DefaultColors.branco,
                      //       fontSize: 14.sp,
                      //       fontWeight: FontWeight.w400,
                      //     ),
                      //   ),
                      // ).animate().fade(duration: 1500.ms).slideY(),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Vamos testar seu conhecimento',
                        style: GoogleFonts.roboto(
                          color: DefaultColors.branco,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ).animate().fade(duration: 1500.ms).slideY(),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  DefaultInputText(
                    controller: searchController,
                    obscureText: false,
                    hintText: 'Pesquisar',
                    icon: Icons.search,
                    onChanged: (search) {
                      setState(() {
                        search = searchController.text;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: DefaultColors.branco,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    right: 20.h,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1.2,
                          ),
                          children: [
                            for (var i in quizes.where((element) {
                              return element.title.toLowerCase().contains(search.toLowerCase());
                            }))
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
            ),
          ],
        ),
      ),
    );
  }
}
