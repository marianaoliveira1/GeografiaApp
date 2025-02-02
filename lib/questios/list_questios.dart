import 'package:geografia/model/quiz.dart';
import 'package:geografia/questios/list/agrarias.dart';
import 'package:geografia/questios/list/biomas.dart';
import 'package:geografia/questios/list/clima.dart';
import 'package:geografia/questios/list/economia.dart';
import 'package:geografia/questios/list/estados.dart';
import 'package:geografia/questios/list/globalizacao.dart';
import 'package:geografia/questios/list/hidrografia.dart';
import 'package:geografia/questios/list/indio.dart';
import 'package:geografia/questios/list/politica_ambiental.dart';
import 'package:geografia/questios/list/populacao.dart';
import 'package:geografia/questios/list/relevo.dart';
import 'package:geografia/questios/list/transportes.dart';
import 'package:geografia/questios/list/urbanizcao.dart';
import 'package:geografia/questios/list/vegetacao.dart';

List<ModelQuiz> quizes = [
  ModelQuiz(
    id: '1',
    title: 'Biomas',
    questions: questionsBiomas,
    image: 'assets/icons-card/biomas.png',
  ),
  ModelQuiz(
    id: '2',
    title: 'Estados',
    questions: questionsEstados,
    image: 'assets/icons-card/estado.png',
  ),
  ModelQuiz(
    id: '3',
    title: 'Clima',
    questions: questionsClima,
    image: 'assets/icons-card/clima.png',
  ),
  ModelQuiz(
    id: '4',
    title: 'Globalização',
    questions: questionsGlobalizacao,
    image: 'assets/icons-card/globalizacao.png',
  ),
  ModelQuiz(
    id: '5',
    title: 'Economia',
    questions: questionsEconomia,
    image: 'assets/icons-card/economia.png',
  ),
  ModelQuiz(
    id: '6',
    title: 'Relevo',
    questions: questionsRelevo,
    image: 'assets/icons-card/relevo.png',
  ),
  ModelQuiz(
    id: '7',
    title: 'Vegetação',
    questions: questionsVegetacao,
    image: 'assets/icons-card/vegetacao.png',
  ),
  ModelQuiz(
    id: '8',
    title: 'Hidrografia',
    questions: questionsHidrografia,
    image: 'assets/icons-card/hidrografia.png',
  ),
  ModelQuiz(
    id: '9',
    title: 'População indigena',
    questions: questionsIndio,
    image: 'assets/icons-card/indio.png',
  ),
  ModelQuiz(
    id: '10',
    title: 'Migração',
    questions: questionsHidrografia,
    image: 'assets/icons-card/migracao.png',
  ),
  ModelQuiz(
    id: '11',
    title: 'Politica Ambiental',
    questions: questionsPoliticaAmbiental,
    image: 'assets/icons-card/politica-ambiental.png',
  ),
  ModelQuiz(
    id: '12',
    title: 'População',
    questions: questionsPopluacao,
    image: 'assets/icons-card/populacao.png',
  ),
  ModelQuiz(
    id: '13',
    title: 'Transporte',
    questions: questionsTransportes,
    image: 'assets/icons-card/transportes.png',
  ),
  ModelQuiz(
    id: '14',
    title: 'Urbanização',
    questions: questionsUrbanizacao,
    image: 'assets/icons-card/urbanizacao.png',
  ),
  ModelQuiz(
    id: '15',
    title: 'Agricultura',
    questions: questionsAgrarias,
    image: 'assets/icons-card/agricultura.png',
  ),
  ModelQuiz(
    id: '16',
    title: 'Insdustria',
    questions: questionsAgrarias,
    image: 'assets/icons-card/industria.png',
  ),
];
