import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsEconomia = [
  {
    "id": "1",
    "title": "Qual setor da economia brasileira é conhecido por sua expressiva produção agropecuária?",
    "options": {
      "Indústria": false,
      "Serviços": false,
      "Agricultura": true,
      "Tecnologia": false
    }
  },
  {
    "id": "2",
    "title": "O que representa o PIB (Produto Interno Bruto) na economia brasileira?",
    "options": {
      "Produto agrícola": false,
      "Índice de inflação": false,
      "Total de bens e serviços produzidos": true,
      "Reservas cambiais": false
    }
  },
  {
    "id": "3",
    "title": "Qual é o principal indicador de emprego e desemprego no Brasil?",
    "options": {
      "Taxa de juros": false,
      "PIB per capita": false,
      "Taxa de desemprego": true,
      "Crescimento econômico": false
    }
  },
  {
    "id": "4",
    "title": "Em qual década ocorreu o Plano Real, que estabilizou a economia brasileira?",
    "options": {
      "Década de 1980": false,
      "Década de 1990": true,
      "Década de 2000": false,
      "Década de 1970": false
    }
  },
  {
    "id": "5",
    "title": "Quais são os principais produtos de exportação do Brasil?",
    "options": {
      "Petróleo e gás": false,
      "Automóveis": false,
      "Soja e carne bovina": true,
      "Equipamentos eletrônicos": false
    }
  },
  {
    "id": "6",
    "title": "O que é o IPCA, um dos principais índices de inflação no Brasil?",
    "options": {
      "Índice de Preços ao Consumidor Amplo": true,
      "Índice de Confiança do Consumidor": false,
      "Índice de Desenvolvimento Humano": false,
      "Índice de Produção Industrial": false
    }
  },
  {
    "id": "7",
    "title": "Qual é o papel do Banco Central na economia brasileira?",
    "options": {
      "Controle da inflação e política monetária": true,
      "Produção de alimentos": false,
      "Desenvolvimento de tecnologia": false,
      "Controle das exportações": false
    }
  },
  {
    "id": "8",
    "title": "Em que ano o Brasil se tornou uma república federativa?",
    "options": {
      "1889": true,
      "1922": false,
      "1930": false,
      "1964": false
    }
  },
  {
    "id": "9",
    "title": "O que são as reformas estruturais na economia brasileira?",
    "options": {
      "Medidas temporárias para estimular o consumo": false,
      "Reformas na legislação trabalhista e previdenciária": true,
      "Aumento dos gastos públicos": false,
      "Controle de câmbio": false
    }
  },
  {
    "id": "10",
    "title": "Qual é o impacto do câmbio na economia brasileira?",
    "options": {
      "Apenas afeta o setor financeiro": false,
      "Influencia nas exportações e importações": true,
      "Não tem relevância econômica": false,
      "Aumenta a taxa de juros": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
