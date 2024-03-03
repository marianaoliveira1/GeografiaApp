import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsMigracao = [
  {
    "id": "1",
    "title": "Qual região do Brasil recebe o maior número de migrantes internos?",
    "options": {
      "Sudeste": false,
      "Nordeste": false,
      "Centro-Oeste": false,
      "Norte": true,
      "Sul": false
    }
  },
  {
    "id": "2",
    "title": "O processo de migração interna no Brasil é influenciado por quais fatores?",
    "options": {
      "Econômicos": true,
      "Climáticos": false,
      "Culturais": false,
      "Políticos": false
    }
  },
  {
    "id": "3",
    "title": "Em qual período histórico ocorreu um grande fluxo migratório do Nordeste para o Sudeste?",
    "options": {
      "Década de 1950": false,
      "Década de 1960": false,
      "Década de 1970": false,
      "Década de 1980": true,
      "Década de 1990": false
    }
  },
  {
    "id": "4",
    "title": "Quais são as consequências sociais da migração interna no Brasil?",
    "options": {
      "Integração cultural": false,
      "Desigualdades regionais": true,
      "Preservação ambiental": false,
      "Homogeneização cultural": false
    }
  },
  {
    "id": "5",
    "title": "Qual região é conhecida por ser uma área de expulsão de migrantes devido à escassez de água?",
    "options": {
      "Sudeste": false,
      "Nordeste": true,
      "Centro-Oeste": false,
      "Norte": false,
      "Sul": false
    }
  },
  {
    "id": "6",
    "title": "A migração interna no Brasil contribui para a formação de quais tipos de metrópoles?",
    "options": {
      "Econômicas": false,
      "Culturais": false,
      "Industrializadas": true,
      "Isoladas": false
    }
  },
  {
    "id": "7",
    "title": "Quais são os impactos da migração interna nas áreas de saúde e educação?",
    "options": {
      "Melhoria na saúde": false,
      "Aumento da desigualdade educacional": true,
      "Diminuição da oferta de serviços de saúde": false,
      "Fortalecimento da educação básica": false
    }
  },
  {
    "id": "8",
    "title": "O fenômeno da migração de campo para cidade no Brasil é conhecido como:",
    "options": {
      "Urbanização": true,
      "Desertificação": false,
      "Êxodo rural": false,
      "Inundação urbana": false
    }
  },
  {
    "id": "9",
    "title": "Quais são os principais estados receptores de migrantes no Brasil?",
    "options": {
      "São Paulo": true,
      "Pará": false,
      "Minas Gerais": false,
      "Rio de Janeiro": false,
      "Bahia": false
    }
  },
  {
    "id": "10",
    "title": "Como a migração interna contribui para a diversidade cultural no Brasil?",
    "options": {
      "Homogeneização cultural": false,
      "Enriquecimento cultural": true,
      "Diminuição da diversidade cultural": false,
      "Isolamento cultural": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
