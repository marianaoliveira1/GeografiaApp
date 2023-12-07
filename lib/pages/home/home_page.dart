import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_gradiendt_brackground.dart';
import 'package:geografia/widgets/default_card.dart';
import 'package:geografia/pages/home/widgtes/home_app_bar.dart';

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
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
                  height: 200,
                  child: Stack(children: []),
                ),
                DefaultCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
