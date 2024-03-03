import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsPopluacao = [
  {
    "id": "1",
    "title": "Qual é a região brasileira com a maior população?",
    "options": {
      "Norte": false,
      "Nordeste": false,
      "Centro-Oeste": false,
      "Sudeste": true,
      "Sul": false
    }
  },
  {
    "id": "2",
    "title": "Em qual década o Brasil atingiu a marca de 100 milhões de habitantes?",
    "options": {
      "1920": false,
      "1950": true,
      "1980": false,
      "2010": false
    }
  },
  {
    "id": "3",
    "title": "Qual é a cidade mais populosa do Brasil?",
    "options": {
      "São Paulo": true,
      "Rio de Janeiro": false,
      "Brasília": false,
      "Salvador": false
    }
  },
  {
    "id": "4",
    "title": "Em qual estado brasileiro está localizada a maior população indígena?",
    "options": {
      "Amazonas": true,
      "Mato Grosso do Sul": false,
      "Roraima": false,
      "Acre": false
    }
  },
  {
    "id": "5",
    "title": "Qual é o estado brasileiro menos populoso?",
    "options": {
      "Amapá": false,
      "Roraima": false,
      "Acre": false,
      "Sergipe": true
    }
  },
  {
    "id": "6",
    "title": "Em que ano o Brasil alcançou a marca de 200 milhões de habitantes?",
    "options": {
      "1990": false,
      "2000": false,
      "2010": true,
      "2020": false
    }
  },
  {
    "id": "7",
    "title": "Qual é a porcentagem aproximada de população urbana no Brasil?",
    "options": {
      "50%": false,
      "70%": true,
      "90%": false,
      "30%": false
    }
  },
  {
    "id": "8",
    "title": "Em que região do Brasil a taxa de natalidade é geralmente mais alta?",
    "options": {
      "Nordeste": true,
      "Sul": false,
      "Centro-Oeste": false,
      "Sudeste": false
    }
  },
  {
    "id": "9",
    "title": "Qual é a expectativa de vida média no Brasil?",
    "options": {
      "70 anos": false,
      "75 anos": false,
      "80 anos": true,
      "85 anos": false
    }
  },
  {
    "id": "10",
    "title": "Em qual década a população brasileira teve a maior taxa de crescimento?",
    "options": {
      "1960": true,
      "1980": false,
      "2000": false,
      "2020": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
