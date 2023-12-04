import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_gradiendt_brackground.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroducaoQuiz extends StatefulWidget {
  const IntroducaoQuiz({super.key});

  @override
  State<IntroducaoQuiz> createState() => _IntroducaoQuizState();
}

class _IntroducaoQuizState extends State<IntroducaoQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: DefaultColors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Capitais do Brasil",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "O Brasil é um país cheio de encantos, cores e diversidade, e suas capitais desempenham um papel especial nessa grande nação. Cada estado brasileiro tem uma capital que serve como centro político e cultural, contribuindo para a riqueza histórica e geográfica do país. Vamos explorar juntos algumas curiosidades sobre essas capitais por meio de perguntas divertidas!",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: DefaultColors.primaryBackground,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: const EdgeInsets.only(bottom: 15, top: 15, right: 15, left: 15),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'Ir para o quiz',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: DefaultColors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
