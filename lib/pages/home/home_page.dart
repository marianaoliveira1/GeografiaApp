import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/serve/auth_service.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_gradiendt_brackground.dart';
import 'package:geografia/widgets/default_card.dart';
import 'package:geografia/pages/home/widgtes/home_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void signOut() {
    final authService = Provider.of<AuthService>(context, listen: false);
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const DefaultGradiendtBackground(),
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const HomeAppBar(),
                  SizedBox(
                    height: 15.h,
                  ),
                  IconButton(
                    onPressed: signOut,
                    icon: Icon(Icons.logout),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Oi, Mariana",
                        style: GoogleFonts.outfit(
                            color: DefaultColors.gray100,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Divirta-se com um jogo",
                        style: GoogleFonts.outfit(
                            color: DefaultColors.gray100,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
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
