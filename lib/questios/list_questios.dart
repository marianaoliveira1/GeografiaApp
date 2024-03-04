import 'package:geografia/model/quiz.dart';
import 'package:geografia/questios/list/biomas.dart';
import 'package:geografia/questios/list/clima.dart';
import 'package:geografia/questios/list/economia.dart';
import 'package:geografia/questios/list/estados.dart';
import 'package:geografia/questios/list/globalizacao.dart';
import 'package:geografia/questios/list/hidrografia.dart';
import 'package:geografia/questios/list/indio.dart';
import 'package:geografia/questios/list/politica_ambiental.dart';
import 'package:geografia/questios/list/populacao.dart';
import 'package:geografia/questios/list/transportes.dart';
import 'package:geografia/questios/list/urbanizcao.dart';
import 'package:geografia/questios/list/vegetacao.dart';

List<ModelQuiz> quizes = [
  ModelQuiz(
    id: '1',
    title: 'Biomas',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '2',
    title: 'Estados',
    questions: questionsEstados,
  ),
  ModelQuiz(
    id: '3',
    title: 'Clima',
    questions: questionsClima,
  ),
  ModelQuiz(
    id: '4',
    title: 'Gloabalização',
    questions: questionsGlobalizacao,
  ),
  ModelQuiz(
    id: '5',
    title: 'Economia',
    questions: questionsEconomia,
  ),
  ModelQuiz(
    id: '6',
    title: 'Relevo',
    questions: questionsRelevo,
  ),
  ModelQuiz(
    id: '7',
    title: 'Vegetação',
    questions: questionsVegetacao,
  ),
  ModelQuiz(
    id: '8',
    title: 'Hidrografia',
    questions: questionsHidrografia,
  ),
  ModelQuiz(
    id: '9',
    title: 'Popluação indigena',
    questions: questionsIndio,
  ),
  ModelQuiz(
    id: '10',
    title: 'Migração',
    questions: questionsHidrografia,
  ),
  ModelQuiz(
    id: '11',
    title: 'Politica Ambiental',
    questions: questionsPoliticaAmbiental,
  ),
  ModelQuiz(
    id: '12',
    title: 'População',
    questions: questionsPopluacao,
  ),
  ModelQuiz(
    id: '13',
    title: 'Relevo',
    questions: questionsRelevo,
  ),
  ModelQuiz(
    id: '14',
    title: 'Transporte',
    questions: questionsTransportes,
  ),
  ModelQuiz(
    id: '15',
    title: 'Vegetaçaõ',
    questions: questionsVegetacao,
  ),
];
