// ignore_for_file: unnecessary_string_interpolations

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/controller/auth_service.dart';
import 'package:geografia/utils/colors.dart';

import 'package:google_fonts/google_fonts.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({
    super.key,
    required this.currentUser,
    required this.authService,
  });

  final User? currentUser;
  final AuthController authService;

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            Text(
              '${currentUser!.email}',
              style: GoogleFonts.roboto(
                color: DefaultColors.bege,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: Container(),
            ),
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
    );
  }
}
