import 'package:geografia/model/question.dart';
import 'package:geografia/model/quiz.dart';

List<ModelQuiz> quizes = [
  ModelQuiz(
    id: '1',
    title: 'Biomas Brasileiros',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '2',
    title: 'Estados Brasileiros',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '3',
    title: 'Capitais Brasileiras',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '4',
    title: 'Rios Brasileiros',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '5',
    title: 'Clima Brasileiro',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '6',
    title: 'Relevo Brasileiro',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '7',
    title: 'Vegetação Brasileira',
    questions: questionsBiomas,
  ),
  ModelQuiz(
    id: '8',
    title: 'Hidrografia Brasileira',
    questions: questionsBiomas,
  ),
];

List<ModelQuestion> questionsBiomas = [
  ModelQuestion(
    id: '1',
    title: 'Qual é o maior bioma brasileiro, conhecido por abrigar a Floresta Amazônica?',
    options: {
      'Amazônia': true,
      'Cerrado': false,
      'Mata Atlântica': false,
      'Caatinga': false,
    },
  ),
  ModelQuestion(
    id: '2',
    title: 'O Pantanal é um bioma brasileiro conhecido por:',
    options: {
      'Altas montanhas': false,
      'Vasta floresta tropical': false,
      'Planícies alagadas': true,
      'Clima frio e seco': false,
    },
  ),
  ModelQuestion(
    id: '3',
    title: 'O Cerrado é caracterizado por:',
    options: {
      'Praias paradisíacas': false,
      'Campos extensos e árvores esparsas': true,
      'Clima frio e nevoeiro constante': false,
      'Floresta densa e úmida': false,
    },
  ),
  ModelQuestion(
    id: '4',
    title: 'Qual bioma é conhecido por suas árvores altas e retorcidas, além de abrigar o Mico-leão-dourado?',
    options: {
      'Mata Atlântica': true,
      'Pampa': false,
      'Pantanal': false,
      'Caatinga': false,
    },
  ),
  ModelQuestion(
    id: '5',
    title: 'Onde encontramos o bioma Pampa, caracterizado por vastas planícies herbáceas?',
    options: {
      'Norte': false,
      'Nordeste': false,
      'Sul': true,
      'Sudeste': false,
    },
  ),
  ModelQuestion(
    id: '6',
    title: 'A Caatinga é conhecida por:',
    options: {
      'Chuvas frequentes': false,
      'Clima frio e neve constante': false,
      'Árvores retorcidas e cactos': true,
      'Extensos campos de grama verde': false,
    },
  ),
  ModelQuestion(
    id: '7',
    title: 'Quais animais podem ser encontrados no bioma Mata Atlântica?',
    options: {
      'Elefantes e girafas': false,
      'Pinguins e ursos polares': false,
      'Onças e micos-leões-dourados': true,
      'Camelos e cobras': false,
    },
  ),
  ModelQuestion(
    id: '8',
    title: 'Onde está localizado o bioma dos Pampas, com suas grandes extensões de campos?',
    options: {
      'Norte': false,
      'Nordeste': false,
      'Sul': true,
      'Centro-Oeste': false,
    },
  ),
  ModelQuestion(
    id: '9',
    title: 'Quais características definem o bioma Mata Atlântica?',
    options: {
      'Floresta densa e clima seco': false,
      'Campos extensos e clima frio': false,
      'Floresta tropical e clima úmido': true,
      'Planícies alagadas e chuvas frequentes': false,
    },
  ),
  ModelQuestion(
    id: '10',
    title: 'Onde encontramos o bioma Cerrado, com suas savanas e vegetação variada?',
    options: {
      'Norte': false,
      'Nordeste': false,
      'Centro-Oeste': true,
      'Sudeste': false,
    },
  ),
];
