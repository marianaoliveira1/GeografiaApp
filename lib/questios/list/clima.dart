import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsClima = [
  {
    "id": "1",
    "title": "Qual é o clima predominante na região Norte do Brasil?",
    "alternatives": {
      "Equatorial": true,
      "Tropical": false,
      "Subtropical": false,
      "Árido": false
    }
  },
  {
    "id": "2",
    "title": "Em qual região do Brasil encontramos o clima subtropical?",
    "alternatives": {
      "Sul": true,
      "Nordeste": false,
      "Centro-Oeste": false,
      "Norte": false
    }
  },
  {
    "id": "3",
    "title": "Quais estados do Brasil são caracterizados pelo clima semiárido?",
    "alternatives": {
      "Bahia, Pernambuco, Ceará e outros": true,
      "Rio de Janeiro, São Paulo, Minas Gerais": false,
      "Amazonas, Acre, Roraima": false,
      "Paraná, Santa Catarina, Rio Grande do Sul": false
    }
  },
  {
    "id": "4",
    "title": "O clima tropical úmido é predominante em qual região do Brasil?",
    "alternatives": {
      "Centro-Oeste e partes do Norte": false,
      "Sul e Sudeste": false,
      "Norte e Nordeste": true,
      "Sudeste e Sul": false
    }
  },
  {
    "id": "5",
    "title": "Qual é o principal fator determinante do clima na região Sul do Brasil?",
    "alternatives": {
      "Latitude": true,
      "Altitude": false,
      "Proximidade do Oceano Atlântico": false,
      "Correntes marítimas": false
    }
  },
  {
    "id": "6",
    "title": "Em que região do Brasil o clima equatorial úmido é predominante?",
    "alternatives": {
      "Nordeste": false,
      "Sul": false,
      "Norte": true,
      "Centro-Oeste": false
    }
  },
  {
    "id": "7",
    "title": "Quais estados do Brasil têm influência do clima tropical de altitude?",
    "alternatives": {
      "Minas Gerais e São Paulo": false,
      "Rio Grande do Sul e Santa Catarina": false,
      "São Paulo e Rio de Janeiro": true,
      "Amazonas e Pará": false
    }
  },
  {
    "id": "8",
    "title": "O clima tropical de altitude é conhecido por ser predominante em que tipo de ambiente?",
    "alternatives": {
      "Pantanal": false,
      "Cerrado": false,
      "Mata Atlântica": true,
      "Caatinga": false
    }
  },
  {
    "id": "9",
    "title": "Qual é a característica principal do clima subtropical no Brasil?",
    "alternatives": {
      "Invernos frios e verões quentes": true,
      "Temperaturas elevadas durante todo o ano": false,
      "Chuvas abundantes durante o ano todo": false,
      "Secas prolongadas e altas temperaturas": false
    }
  },
  {
    "id": "10",
    "title": "Em qual região do Brasil predominam os climas tropicais com estação seca?",
    "alternatives": {
      "Centro-Oeste e partes do Norte": false,
      "Sudeste e Sul": false,
      "Norte e Nordeste": true,
      "Sul e Sudeste": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
