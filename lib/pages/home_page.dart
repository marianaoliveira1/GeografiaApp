import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';

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
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          ),
          // Card()
        ],
      )),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: []),
      child: Column(
        children: [
          Image.asset(
            "assets/icons/brazil.png",
            height: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Capitas do Brasil',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}
