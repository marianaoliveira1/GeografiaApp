import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsGlobalizacao = [
  {
    "id": "1",
    "title": "Quais são os impactos da globalização no meio ambiente brasileiro?",
    "options": {
      "Desmatamento na Amazônia": true,
      "Expansão agrícola no Cerrado": false,
      "Preservação da Mata Atlântica": false,
      "Desertificação na Caatinga": false
    }
  },
  {
    "id": "2",
    "title": "Como a globalização afeta a economia do Brasil?",
    "options": {
      "Aumento das exportações": true,
      "Desindustrialização": false,
      "Diversificação da matriz econômica": false,
      "Isolamento financeiro": false
    }
  },
  {
    "id": "3",
    "title": "Quais são os aspectos culturais influenciados pela globalização no Brasil?",
    "options": {
      "Homogeneização cultural": true,
      "Preservação das tradições locais": false,
      "Difusão de novas práticas culturais": false,
      "Isolamento cultural": false
    }
  },
  {
    "id": "4",
    "title": "De que forma a globalização impacta as relações sociais no Brasil?",
    "options": {
      "Intercâmbio cultural": true,
      "Aumento da desigualdade social": false,
      "Fortalecimento das comunidades locais": false,
      "Fragmentação social": false
    }
  },
  {
    "id": "5",
    "title": "Como a globalização influencia as políticas ambientais no Brasil?",
    "options": {
      "Cooperação internacional para preservação": true,
      "Exploração desenfreada dos recursos naturais": false,
      "Fortalecimento de medidas sustentáveis": false,
      "Descompromisso com a preservação ambiental": false
    }
  },
  {
    "id": "6",
    "title": "Quais são os desafios enfrentados pelo Brasil diante da globalização?",
    "options": {
      "Competitividade econômica": true,
      "Preservação da identidade cultural": false,
      "Sustentabilidade ambiental": false,
      "Equidade social": false
    }
  },
  {
    "id": "7",
    "title": "Como a globalização impacta o setor tecnológico no Brasil?",
    "options": {
      "Integração às inovações globais": true,
      "Dependência tecnológica estrangeira": false,
      "Estímulo à pesquisa e desenvolvimento local": false,
      "Isolamento tecnológico": false
    }
  },
  {
    "id": "8",
    "title": "Quais são as implicações da globalização nas questões de segurança nacional?",
    "options": {
      "Cooperação internacional contra ameaças transnacionais": true,
      "Vulnerabilidade a pressões externas": false,
      "Fortalecimento das forças armadas nacionais": false,
      "Isolamento militarista": false
    }
  },
  {
    "id": "9",
    "title": "Como a globalização influencia o acesso à educação no Brasil?",
    "options": {
      "Intercâmbio acadêmico": true,
      "Desigualdade no acesso à educação de qualidade": false,
      "Diversificação de métodos de ensino": false,
      "Isolamento educacional": false
    }
  },
  {
    "id": "10",
    "title": "Quais são os efeitos da globalização nas políticas de saúde pública no Brasil?",
    "options": {
      "Colaboração internacional em pesquisa médica": true,
      "Desafios na gestão de epidemias globais": false,
      "Fortalecimento do sistema de saúde nacional": false,
      "Negligência em questões de saúde global": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
