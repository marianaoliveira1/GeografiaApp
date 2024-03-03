import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsEstados = [
  {
    "id": "1",
    "title": "Qual é o estado brasileiro conhecido como 'Terra do Sol Nascente'?",
    "options": {
      "Bahia": false,
      "Ceará": true,
      "Rio de Janeiro": false,
      "São Paulo": false
    }
  },
  {
    "id": "2",
    "title": "Qual é o estado brasileiro que abriga a famosa cidade de Bonito, conhecida por suas belezas naturais?",
    "options": {
      "Mato Grosso do Sul": true,
      "Goiás": false,
      "Pernambuco": false,
      "Paraná": false
    }
  },
  {
    "id": "3",
    "title": "Em qual estado brasileiro se encontra a Chapada Diamantina?",
    "options": {
      "Bahia": true,
      "Minas Gerais": false,
      "Tocantins": false,
      "Piauí": false
    }
  },
  {
    "id": "4",
    "title": "Qual é o estado brasileiro que tem o formato de uma folha?",
    "options": {
      "Acre": false,
      "Amapá": false,
      "Maranhão": false,
      "Alagoas": true
    }
  },
  {
    "id": "5",
    "title": "Em qual estado brasileiro está localizada a Ilha de Fernando de Noronha?",
    "options": {
      "Pernambuco": true,
      "Rio de Janeiro": false,
      "Ceará": false,
      "Santa Catarina": false
    }
  },
  {
    "id": "6",
    "title": "Qual é o estado mais populoso do Brasil?",
    "options": {
      "São Paulo": true,
      "Minas Gerais": false,
      "Rio de Janeiro": false,
      "Bahia": false
    }
  },
  {
    "id": "7",
    "title": "Em qual estado brasileiro está localizado o Pantanal?",
    "options": {
      "Mato Grosso": true,
      "Mato Grosso do Sul": false,
      "Goiás": false,
      "Pará": false
    }
  },
  {
    "id": "8",
    "title": "Qual é o estado brasileiro conhecido como 'Terra do Fandango'?",
    "options": {
      "Santa Catarina": true,
      "Paraná": false,
      "Rio Grande do Sul": false,
      "São Paulo": false
    }
  },
  {
    "id": "9",
    "title": "Em qual estado brasileiro se localiza o Vale do Vinhedo, conhecido por seus vinhos?",
    "options": {
      "Rio Grande do Sul": false,
      "Santa Catarina": false,
      "São Paulo": true,
      "Minas Gerais": false
    }
  },
  {
    "id": "10",
    "title": "Qual é o estado brasileiro que possui o maior número de praias?",
    "options": {
      "Bahia": false,
      "Ceará": false,
      "Rio de Janeiro": true,
      "Pernambuco": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
