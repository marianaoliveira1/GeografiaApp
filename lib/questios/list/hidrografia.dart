import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsHidrografia = [
  {
    "id": "1",
    "title": "Qual é o rio mais extenso do Brasil?",
    "alternatives": {
      "Rio Amazonas": true,
      "Rio São Francisco": false,
      "Rio Paraná": false,
      "Rio Negro": false
    }
  },
  {
    "id": "2",
    "title": "Qual é o maior lago do Brasil?",
    "alternatives": {
      "Lago de Sobradinho": false,
      "Lago de Tucuruí": false,
      "Lago Paranoá": false,
      "Lagoa dos Patos": true
    }
  },
  {
    "id": "3",
    "title": "Em que região do Brasil está localizado o Pantanal?",
    "alternatives": {
      "Sul": false,
      "Centro-Oeste": true,
      "Sudeste": false,
      "Norte": false
    }
  },
  {
    "id": "4",
    "title": "Qual é o rio que separa os estados do Maranhão e do Piauí?",
    "alternatives": {
      "Rio Parnaíba": true,
      "Rio São Francisco": false,
      "Rio Tocantins": false,
      "Rio Araguaia": false
    }
  },
  {
    "id": "5",
    "title": "Em qual bacia hidrográfica está localizado o Rio Paraná?",
    "alternatives": {
      "Bacia do Amazonas": false,
      "Bacia do São Francisco": false,
      "Bacia do Paraná": true,
      "Bacia do Tocantins": false
    }
  },
  {
    "id": "6",
    "title": "Qual é o rio que forma a fronteira entre Brasil e Argentina?",
    "alternatives": {
      "Rio São Francisco": false,
      "Rio Paraná": true,
      "Rio Uruguai": false,
      "Rio Paraguai": false
    }
  },
  {
    "id": "7",
    "title": "Qual é a principal fonte de água potável para a Região Metropolitana de São Paulo?",
    "alternatives": {
      "Represa de Guarapiranga": false,
      "Rio Paraíba do Sul": false,
      "Represa Billings": true,
      "Rio Tietê": false
    }
  },
  {
    "id": "8",
    "title": "Em que estado brasileiro está localizado o Rio Doce?",
    "alternatives": {
      "Minas Gerais": true,
      "Espírito Santo": false,
      "Bahia": false,
      "São Paulo": false
    }
  },
  {
    "id": "9",
    "title": "Qual é o maior rio totalmente brasileiro?",
    "alternatives": {
      "Rio Tocantins": false,
      "Rio Paraná": false,
      "Rio São Francisco": true,
      "Rio Araguaia": false
    }
  },
  {
    "id": "10",
    "title": "Em que estado brasileiro está localizado o Rio Madeira?",
    "alternatives": {
      "Amazonas": false,
      "Rondônia": true,
      "Acre": false,
      "Mato Grosso": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
