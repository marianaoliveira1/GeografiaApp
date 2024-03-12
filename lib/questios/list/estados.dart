import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsEstados = [
  {
    "id": "1",
    "title": "Conforme a regionalização atual do Brasil, prevista pela Constituição de 1988, qual das alternativas NÃO é uma das regiões do país?",
    "alternatives": {
      "Centro-Norte": true,
      "Nordeste": false,
      "Sul": false,
      "Sudeste": false,
      "Centro-Oeste": false
    }
  },
  {
    "id": "2",
    "title": "Qual dos estados abaixo faz parte da região Sudeste do Brasil?",
    "alternatives": {
      "Tocantins": false,
      "Espírito Santo": true,
      "Paraíba": false,
      "Santa Catarina": false,
      "Paraná": false
    }
  },
  {
    "id": "3",
    "title": "A cidade de Teresina, localizada no Nordeste do Brasil, é capital de qual estado?",
    "alternatives": {
      "Paraíba": false,
      "Tocantins": false,
      "Piauí": true,
      "Maranhão": false,
      "Rondônia": false
    }
  },
  {
    "id": "4",
    "title": "Qual a região brasileira que apresenta a menor densidade demográfica?",
    "alternatives": {
      "Norte": true,
      "Nordeste": false,
      "Sul": false,
      "Centro-Oeste": false,
      "Sudeste": false
    }
  },
  {
    "id": "5",
    "title": "Qual o tipo climático predominante na região Nordeste do Brasil?",
    "alternatives": {
      "Tropical": false,
      "Equatorial": false,
      "Semiárido": true,
      "Subtropical": false,
      "Desértico": false
    }
  },
  {
    "id": "6",
    "title": "Qual bioma brasileiro, marcado pela sazonalidade das cheias, é encontrado tipicamente na região Centro-Oeste do país?",
    "alternatives": {
      "Araucárias": false,
      "Mata Atlântica": false,
      "Pantanal": true,
      "Mata de Cocais": false,
      "Caatinga": false
    }
  },
  {
    "id": "7",
    "title": "Qual é a maior metrópole em população da região Sudeste do Brasil?",
    "alternatives": {
      "Rio de Janeiro": false,
      "Brasília": false,
      "São Paulo": true,
      "Vitória": false,
      "Porto Alegre": false
    }
  },
  {
    "id": "8",
    "title": "Quais grupos de imigrantes tiveram grande protagonismo na colonização da região Sul do Brasil?",
    "alternatives": {
      "Africanos e chineses": false,
      "Canadenses e alemães": false,
      "Coreanos e japoneses": false,
      "Americanos e alemães": false,
      "Alemães e italianos": true
    }
  },
  {
    "id": "9",
    "title": "Marque a alternativa que corresponde à quantidade correta de estados do Brasil",
    "alternatives": {
      "26 estados e 1 Distrito Federal": true,
      "25 estados": false,
      "25 estados e 1 Distrito Federal": false,
      "27 estados.": false,
    }
  },
  {
    "id": "10",
    "title": "Qual é o estado brasileiro com a maior extensão territorial e qual é o estado com a menor extensão territorial",
    "alternatives": {
      " Amazonas e Acre.": false,
      "Pará e Alagoas": false,
      "Amazonas e Sergipe": true,
      "Mato Grosso e Roraima": false,
      "São Paulo e Amapá": false
    }
  },
  {
    "id": "11",
    "title": "Qual estado brasileiro é famoso por suas Cataratas do Iguaçu, uma das Sete Maravilhas Naturais do Mundo?",
    "alternatives": {
      "Paraná": true,
      "Santa Catarina": false,
      "Rio Grande do Sul": false,
      "Mato Grosso do Sul": false
    }
  },
  {
    "id": "12",
    "title": "Qual estado brasileiro é conhecido por suas belas praias e pelo turismo?",
    "alternatives": {
      "Ceará": true,
      "Rio Grande do Norte": false,
      "Paraíba": false,
      "Pernambuco": false
    }
  },
].map((e) => ModelQuestion.fromMap(e)).toList();
