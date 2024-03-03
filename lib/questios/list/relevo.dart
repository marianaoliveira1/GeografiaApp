import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsRelevo = [
  {
    "id": "1",
    "title": "Qual região brasileira é conhecida por abrigar a maior floresta tropical do mundo?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "2",
    "title": "Em qual bioma brasileiro predominam grandes extensões de planaltos?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "3",
    "title": "Quais áreas brasileiras são conhecidas por sua vegetação predominantemente de gramíneas e árvores esparsas?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "4",
    "title": "Qual é a região brasileira caracterizada por um bioma de clima semiárido e vegetação adaptada à escassez de água?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  },
  {
    "id": "5",
    "title": "Em qual bioma brasileiro se encontram as famosas chapadas, como a Chapada dos Veadeiros?",
    "options": {
      "Amazônia": false,
      "Cerrado": true,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "6",
    "title": "Qual região brasileira é conhecida por suas planícies alagáveis e extensas áreas de savana?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  },
  {
    "id": "7",
    "title": "Em qual bioma brasileiro se localiza o Pico da Neblina, ponto mais alto do país?",
    "options": {
      "Amazônia": true,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": false
    }
  },
  {
    "id": "8",
    "title": "Quais regiões brasileiras são conhecidas por suas serras e planaltos costeiros?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": true,
      "Caatinga": false
    }
  },
  {
    "id": "9",
    "title": "Em qual bioma brasileiro ocorrem as formações rochosas conhecidas como \"cangas\"?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  },
  {
    "id": "10",
    "title": "Quais regiões brasileiras são marcadas por extensas áreas de planícies e terras baixas?",
    "options": {
      "Amazônia": false,
      "Cerrado": false,
      "Mata Atlântica": false,
      "Caatinga": true
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
