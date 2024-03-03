import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsVegetacao = [
  {
    "id": "1",
    "title": "Qual é a maior floresta tropical do Brasil?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "2",
    "title": "Qual bioma brasileiro é caracterizado por extensas planícies e savanas?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "3",
    "title": "Em qual bioma encontramos a maior diversidade de espécies vegetais?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "4",
    "title": "Quais áreas são conhecidas por abrigar o bioma de transição entre a Floresta Amazônica e o Cerrado?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "5",
    "title": "Onde podemos encontrar o bioma da Mata Atlântica no Brasil?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": true,
      "Caatinga": false
    }
  },
  {
    "id": "6",
    "title": "Qual região do Brasil é marcada por vegetação adaptada a climas semiáridos?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  },
  {
    "id": "7",
    "title": "Em qual bioma se encontra a maior parte da produção agrícola do Brasil?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "8",
    "title": "Qual bioma é conhecido por ser uma floresta sazonal, com árvores que perdem as folhas durante uma parte do ano?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": true,
      "Caatinga": false
    }
  },
  {
    "id": "9",
    "title": "Em qual bioma a biodiversidade é ameaçada principalmente devido ao desmatamento?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "10",
    "title": "Qual bioma é conhecido por possuir uma vegetação densa e rica em recursos hídricos?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
