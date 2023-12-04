import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_gradiendt_brackground.dart';
import 'package:geografia/widgets/default_card.dart';
import 'package:geografia/widgets/home_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            const DefaultGradiendtBackground(),
            Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
