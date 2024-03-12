import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsTransportes = [
  {
    "id": "1",
    "title": "Qual é o principal meio de transporte fluvial na Região Norte do Brasil?",
    "alternatives": {
      "Barco": true,
      "Carro": false,
      "Avião": false,
      "Trem": false
    }
  },
  {
    "id": "2",
    "title": "Em qual modal de transporte é comum o uso de biodiesel no Brasil?",
    "alternatives": {
      "Ônibus": true,
      "Navio": false,
      "Caminhão": false,
      "Metrô": false
    }
  },
  {
    "id": "3",
    "title": "Qual é o principal aeroporto internacional do Brasil?",
    "alternatives": {
      "Aeroporto de Guarulhos": true,
      "Aeroporto Santos Dumont": false,
      "Aeroporto de Brasília": false,
      "Aeroporto de Congonhas": false
    }
  },
  {
    "id": "4",
    "title": "Em qual região do Brasil é mais comum o uso de bicicletas como meio de transporte?",
    "alternatives": {
      "Sudeste": false,
      "Nordeste": false,
      "Sul": false,
      "Centro-Oeste": true
    }
  },
  {
    "id": "5",
    "title": "Qual é o principal meio de transporte utilizado para o escoamento da produção agrícola no Brasil?",
    "alternatives": {
      "Caminhão": true,
      "Navio": false,
      "Trem": false,
      "Avião": false
    }
  },
  {
    "id": "6",
    "title": "Em qual região é mais comum o transporte de gado por meio de estradas?",
    "alternatives": {
      "Norte": false,
      "Centro-Oeste": true,
      "Sul": false,
      "Nordeste": false
    }
  },
  {
    "id": "7",
    "title": "Qual é a principal ferrovia de carga no Brasil?",
    "alternatives": {
      "Ferrovia Norte-Sul": false,
      "Ferrovia Transnordestina": false,
      "Ferrovia Centro-Atlântica": true,
      "Ferrovia Carajás": false
    }
  },
  {
    "id": "8",
    "title": "Em qual modal de transporte é mais comum o uso de etanol como combustível?",
    "alternatives": {
      "Carro": false,
      "Ônibus": false,
      "Avião": false,
      "Frota de Táxi": true
    }
  },
  {
    "id": "9",
    "title": "Qual é a maior empresa de transporte rodoviário de cargas no Brasil?",
    "alternatives": {
      "JSL S/A": true,
      "Cargill": false,
      "Ambev": false,
      "Vale": false
    }
  },
  {
    "id": "10",
    "title": "Em qual cidade brasileira é mais comum o uso de transporte público aquaviário?",
    "alternatives": {
      "Manaus": true,
      "Recife": false,
      "Rio de Janeiro": false,
      "Porto Alegre": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
