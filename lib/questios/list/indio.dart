import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsIndio = [
  {
    "id": "1",
    "title": "Qual é a maior reserva indígena do Brasil?",
    "options": {
      "Xingu": true,
      "Pataxó": false,
      "Guarani-Kaiowá": false,
      "Ticuna": false
    }
  },
  {
    "id": "2",
    "title": "Quantas etnias indígenas existem no Brasil?",
    "options": {
      "Mais de 200": true,
      "50-100": false,
      "Menos de 20": false,
      "100-200": false
    }
  },
  {
    "id": "3",
    "title": "Em qual região do Brasil há uma forte presença indígena?",
    "options": {
      "Amazônia": true,
      "Nordeste": false,
      "Centro-Oeste": false,
      "Sul": false
    }
  },
  {
    "id": "4",
    "title": "Qual é o principal órgão responsável pela proteção dos direitos indígenas no Brasil?",
    "options": {
      "FUNAI": true,
      "IBAMA": false,
      "INCRA": false,
      "ICMBio": false
    }
  },
  {
    "id": "5",
    "title": "Quais são as principais ameaças enfrentadas pelas comunidades indígenas?",
    "options": {
      "Desmatamento": true,
      "Pesquisa Científica": false,
      "Turismo desordenado": false,
      "Preservação Ambiental": false
    }
  },
  {
    "id": "6",
    "title": "Qual é a língua indígena mais falada no Brasil?",
    "options": {
      "Tupi-Guarani": true,
      "Pataxó": false,
      "Xavante": false,
      "Kayapó": false
    }
  },
  {
    "id": "7",
    "title": "Qual é o principal desafio para a demarcação de terras indígenas no Brasil?",
    "options": {
      "Conflitos fundiários": true,
      "Falta de interesse governamental": false,
      "Invasões por garimpeiros": false,
      "Problemas ambientais": false
    }
  },
  {
    "id": "8",
    "title": "Em qual documento internacional estão expressos os direitos indígenas?",
    "options": {
      "Declaração das Nações Unidas sobre os Direitos dos Povos Indígenas": true,
      "Protocolo de Kyoto": false,
      "Tratado de Tordesilhas": false,
      "Convenção de Genebra": false
    }
  },
  {
    "id": "9",
    "title": "Qual é o impacto das hidrelétricas nas comunidades indígenas?",
    "options": {
      "Deslocamento forçado": true,
      "Melhoria das condições de vida": false,
      "Preservação cultural": false,
      "Incentivo ao turismo": false
    }
  },
  {
    "id": "10",
    "title": "Como as comunidades indígenas contribuem para a preservação ambiental?",
    "options": {
      "Conhecimento tradicional": true,
      "Desmatamento indiscriminado": false,
      "Uso intensivo de agrotóxicos": false,
      "Exploração predatória de recursos": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
