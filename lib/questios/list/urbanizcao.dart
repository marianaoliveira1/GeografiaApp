import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsRelevo = [
  {
    "id": "1",
    "title": "Qual é o maior desafio da urbanização no Brasil?",
    "options": {
      "Falta de infraestrutura": true,
      "Desemprego": false,
      "Poluição": false,
      "Trânsito": false
    }
  },
  {
    "id": "2",
    "title": "Em que região do Brasil a urbanização é mais intensa?",
    "options": {
      "Sudeste": true,
      "Norte": false,
      "Nordeste": false,
      "Centro-Oeste": false
    }
  },
  {
    "id": "3",
    "title": "Qual o impacto da urbanização nas áreas verdes?",
    "options": {
      "Redução das áreas verdes": true,
      "Aumento das áreas verdes": false,
      "Manutenção das áreas verdes": false,
      "Deslocamento das áreas verdes": false
    }
  },
  {
    "id": "4",
    "title": "Quais são os principais problemas sociais relacionados à urbanização?",
    "options": {
      "Favelização": true,
      "Desigualdade social": false,
      "Analfabetismo": false,
      "Migração interna": false
    }
  },
  {
    "id": "5",
    "title": "Como a urbanização afeta o meio ambiente?",
    "options": {
      "Aumento da poluição do ar": true,
      "Preservação da fauna e flora": false,
      "Diminuição do consumo de recursos naturais": false,
      "Equilíbrio ecológico": false
    }
  },
  {
    "id": "6",
    "title": "Qual é a importância do planejamento urbano na mitigação dos problemas causados pela urbanização?",
    "options": {
      "Fundamental para o desenvolvimento sustentável": true,
      "Irrelevante para os problemas urbanos": false,
      "Aumenta os problemas urbanos": false,
      "Contribui para a desigualdade social": false
    }
  },
  {
    "id": "7",
    "title": "Quais são os impactos da urbanização nas áreas rurais?",
    "options": {
      "Êxodo rural": true,
      "Fortalecimento da agricultura familiar": false,
      "Preservação das tradições locais": false,
      "Aumento da produção agrícola": false
    }
  },
  {
    "id": "8",
    "title": "Qual é o papel das políticas públicas na gestão da urbanização?",
    "options": {
      "Essencial para a promoção do desenvolvimento sustentável": true,
      "Ineficaz na solução dos problemas urbanos": false,
      "Aumenta a desigualdade social": false,
      "Indiferente para a qualidade de vida urbana": false
    }
  },
  {
    "id": "9",
    "title": "Como a urbanização impacta o acesso à educação nas áreas urbanas?",
    "options": {
      "Facilita o acesso à educação": true,
      "Diminui as oportunidades educacionais": false,
      "Não interfere no acesso à educação": false,
      "Causa exclusão social na educação": false
    }
  },
  {
    "id": "10",
    "title": "Quais são os principais desafios ambientais relacionados à urbanização no Brasil?",
    "options": {
      "Poluição da água": true,
      "Preservação das reservas naturais": false,
      "Diminuição do efeito estufa": false,
      "Aumento da biodiversidade urbana": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
