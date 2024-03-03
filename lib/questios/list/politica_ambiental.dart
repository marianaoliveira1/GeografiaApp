import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsPoliticaAmbiental = [
  {
    "id": "1",
    "title": "Qual bioma brasileiro é frequentemente associado a questões relacionadas ao desmatamento?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "2",
    "title": "Em qual bioma se encontra a maior parte da Floresta Amazônica?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "3",
    "title": "Quais são os principais desafios enfrentados na preservação da Mata Atlântica?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": true,
      "Caatinga": false
    }
  },
  {
    "id": "4",
    "title": "O Pantanal, importante ecossistema brasileiro, é classificado como qual tipo de bioma?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Pantanal": true
    }
  },
  {
    "id": "5",
    "title": "Qual bioma brasileiro é conhecido pela sua vegetação adaptada a climas semiáridos?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  },
  {
    "id": "6",
    "title": "A política ambiental brasileira está diretamente ligada à preservação de quais recursos naturais?",
    "options": {
      "Biodiversidade": true,
      "Recursos Hídricos": true,
      "Energia Fóssil": false,
      "Minerais": false
    }
  },
  {
    "id": "7",
    "title": "Quais medidas podem ser adotadas para combater o desmatamento ilegal no Brasil?",
    "options": {
      "Fiscalização intensificada": true,
      "Incentivo à exploração descontrolada": false,
      "Regularização fundiária": true,
      "Ignorar a situação": false
    }
  },
  {
    "id": "8",
    "title": "Como a população pode contribuir para a preservação dos biomas brasileiros?",
    "options": {
      "Participação em projetos de reflorestamento": true,
      "Descarte inadequado de resíduos": false,
      "Consumo sustentável": true,
      "Desperdício de água": false
    }
  },
  {
    "id": "9",
    "title": "Quais são os impactos ambientais associados ao desmatamento na Amazônia?",
    "options": {
      "Perda de biodiversidade": true,
      "Aumento das áreas de conservação": false,
      "Melhoria na qualidade do solo": false,
      "Redução das mudanças climáticas": false
    }
  },
  {
    "id": "10",
    "title": "Qual órgão governamental brasileiro é responsável pela implementação de políticas ambientais?",
    "options": {
      "IBAMA": true,
      "ANVISA": false,
      "INPE": false,
      "IBGE": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
