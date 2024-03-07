import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsAgrarias = [
  {
    "id": "1",
    "title": "Quais são os principais produtos agrícolas cultivados no Brasil?",
    "options": {
      "Soja, café, cana-de-açúcar, milho, laranja": true,
      "Arroz, feijão, trigo, batata, tomate": false,
      "Algodão, cacau, banana, mandioca, uva": false,
      "Cacau, banana, mandioca, uva, arroz": false
    }
  },
  {
    "id": "2",
    "title": "Qual é a importância da agricultura familiar no cenário agrícola brasileiro?",
    "options": {
      "Promove a inclusão social e a preservação ambiental": true,
      "É responsável por grande parte da exportação de produtos agrícolas": false,
      "Contribui para a concentração fundiária e a degradação ambiental": false,
      "É exclusivamente voltada para a subsistência e não tem relevância econômica": false
    }
  },
  {
    "id": "3",
    "title": "Quais são os principais desafios enfrentados pela agricultura brasileira?",
    "options": {
      "Infraestrutura precária, acesso a crédito e tecnologia, questão fundiária, sustentabilidade ambiental": true,
      "Escassez de mão de obra, baixa produtividade, falta de mercado consumidor, excesso de burocracia": false,
      "Competição desleal com importações, altos custos de produção, falta de incentivos governamentais, impactos das mudanças climáticas": false,
      "Poluição do solo, uso indiscriminado de agrotóxicos, degradação dos recursos hídricos, resistência a transgênicos": false
    }
  },
  {
    "id": "4",
    "title": "Como a tecnologia tem sido utilizada para melhorar a produtividade agrícola no Brasil?",
    "options": {
      "Desenvolvimento de sementes transgênicas, maquinário agrícola moderno, sistemas de irrigação eficientes": true,
      "Uso indiscriminado de agrotóxicos, desmatamento para expansão agrícola, monocultura intensiva": false,
      "Uso de práticas agroecológicas, agricultura orgânica, preservação de sementes crioulas": false,
      "Mecanização agrícola, controle biológico de pragas, diversificação de culturas": false
    }
  },
  {
    "id": "5",
    "title": "Qual é o impacto da agropecuária brasileira no meio ambiente?",
    "options": {
      "Desmatamento, uso excessivo de agrotóxicos, poluição de recursos hídricos": true,
      "Preservação de áreas naturais, uso sustentável dos recursos naturais, recuperação de áreas degradadas": false,
      "Promoção da biodiversidade, conservação de espécies nativas, redução das emissões de gases de efeito estufa": false,
      "Adoção de práticas agroecológicas, integração lavoura-pecuária-floresta, preservação de áreas de preservação permanente": false
    }
  },
  {
    "id": "11",
    "title": "Como a distribuição de terras no Brasil influencia na agricultura do país?",
    "options": {
      "Concentração de terras limita o acesso à terra para pequenos agricultores e impacta a produção agrícola": true,
      "Distribuição equitativa de terras estimula a diversificação agrícola e promove o desenvolvimento sustentável": false,
      "A distribuição de terras não tem impacto significativo na agricultura brasileira": false,
      "A concentração de terras é benéfica, pois permite o uso eficiente dos recursos naturais": false
    }
  },
  {
    "id": "7",
    "title": "Quais são as principais políticas públicas relacionadas à agricultura no Brasil?",
    "options": {
      "Programa de Fortalecimento da Agricultura Familiar (Pronaf), seguro agrícola, Plano Safra": true,
      "Incentivos à exportação de commodities agrícolas, subsídios para grandes produtores, isenção de impostos para agroindústrias": false,
      "Restrições à importação de produtos agrícolas, controle de preços dos alimentos, incentivos à monocultura": false,
      "Preservação de áreas de reserva legal, regularização fundiária, estímulo à produção agroecológica": false
    }
  },
  {
    "id": "8",
    "title": "Como as mudanças climáticas estão afetando a agricultura brasileira?",
    "options": {
      "Alterando os padrões de chuva, temperatura e ocorrência de eventos climáticos extremos, afetando a produção agrícola": true,
      "Beneficiando a agricultura, com o aumento da temperatura e a ampliação das áreas de cultivo": false,
      "Não apresentam impactos significativos na agricultura brasileira": false,
      "Estimulando a adoção de práticas agroecológicas e de conservação do solo": false
    }
  },
  {
    "id": "9",
    "title": "Qual é a importância da agroindústria para a agricultura brasileira?",
    "options": {
      "Transforma os produtos agrícolas em alimentos e produtos industrializados, agregando valor à produção e gerando empregos": true,
      "Concentra a produção agrícola em grandes empresas, gerando impactos negativos no meio ambiente": false,
      "Promove a exclusão social ao concentrar os lucros da produção agrícola em poucas mãos": false,
      "Não tem relevância econômica para a agricultura brasileira": false
    }
  },
  {
    "id": "10",
    "title": "Quais são os principais mercados para os produtos agrícolas brasileiros?",
    "options": {
      "Países da América do Sul, Europa, Ásia e América do Norte": true,
      "Países africanos e do Oriente Médio": false,
      "Mercados internos, sem relevância para as exportações": false,
      "Mercados exclusivamente regionais, sem grande expressão internacional": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
