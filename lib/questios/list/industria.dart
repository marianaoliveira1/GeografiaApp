import 'package:geografia/model/question.dart';

List<ModelQuestion> questionsIndustria = [
  {
    "id": "1",
    "title": "Quais são os principais setores industriais do Brasil?",
    "alternatives": {
      "Automobilístico, siderúrgico, petroquímico, alimentício, têxtil": true,
      "Tecnologia da informação, energia, construção civil, aeronáutico, naval": false,
      "Mineração, telecomunicações, farmacêutico, químico, agrícola": false,
      "Metalúrgico, eletrônico, papel e celulose, plástico, transporte": false
    }
  },
  {
    "id": "2",
    "title": "Qual é a importância da indústria automobilística na economia brasileira?",
    "alternatives": {
      "Gera empregos, movimenta a cadeia produtiva e contribui significativamente para o PIB": true,
      "Tem baixa relevância econômica, pois é um setor em declínio no Brasil": false,
      "É responsável por altos índices de poluição e degradação ambiental": false,
      "Depende exclusivamente de importações de tecnologia e componentes": false
    }
  },
  {
    "id": "3",
    "title": "Quais são os principais desafios enfrentados pela indústria brasileira?",
    "alternatives": {
      "Alta carga tributária, falta de infraestrutura, custos de produção elevados, concorrência externa": true,
      "Baixa demanda interna, falta de mão de obra qualificada, burocracia excessiva, falta de inovação": false,
      "Impactos ambientais, falta de políticas públicas adequadas, dependência de commodities, desvalorização da moeda": false,
      "Concentração de renda, falta de incentivos governamentais, falta de acesso a crédito, corrupção": false
    }
  },
  {
    "id": "4",
    "title": "Como a tecnologia tem sido utilizada para modernizar a indústria brasileira?",
    "alternatives": {
      "Automatização de processos, uso de sistemas de gestão integrada, implementação de novas tecnologias de produção": true,
      "Desenvolvimento de produtos ecologicamente corretos, incentivo à produção artesanal, reciclagem de resíduos industriais": false,
      "Uso de mão de obra intensiva, produção em larga escala, desenvolvimento de produtos genéricos": false,
      "Adoção de práticas sustentáveis, redução do consumo de energia, reciclagem de materiais": false
    }
  },
  {
    "id": "5",
    "title": "Qual é o impacto da indústria na distribuição espacial da população no Brasil?",
    "alternatives": {
      "Concentração de indústrias em áreas urbanas gera crescimento populacional e impactos socioeconômicos": true,
      "Desconcentração industrial reduz o êxodo rural e promove o desenvolvimento regional": false,
      "Industrialização em áreas rurais diminui a qualidade de vida da população local": false,
      "Desenvolvimento industrial apenas em áreas metropolitanas aumenta a segregação social": false
    }
  },
  {
    "id": "6",
    "title": "Qual é o papel das indústrias de base no desenvolvimento econômico do Brasil?",
    "alternatives": {
      "Fornecem insumos para outros setores industriais e contribuem para a geração de empregos e renda": true,
      "São responsáveis por altos índices de poluição e degradação ambiental": false,
      "Dependem exclusivamente de importações de tecnologia e componentes": false,
      "Têm baixa relevância econômica, pois são setores em declínio no Brasil": false
    }
  },
  {
    "id": "7",
    "title": "Como a indústria naval tem contribuído para a economia brasileira?",
    "alternatives": {
      "Gera empregos, movimenta a economia e fortalece a indústria de construção naval": true,
      "Tem baixa relevância econômica, pois é um setor em declínio no Brasil": false,
      "Depende exclusivamente de importações de tecnologia e componentes": false,
      "É responsável por altos índices de poluição e degradação ambiental": false
    }
  },
  {
    "id": "8",
    "title": "Quais são os principais polos industriais do Brasil?",
    "alternatives": {
      "São Paulo, Rio de Janeiro, Minas Gerais, Rio Grande do Sul": true,
      "Paraná, Bahia, Pernambuco, Ceará": false,
      "Goiás, Santa Catarina, Espírito Santo, Pará": false,
      "Amazonas, Mato Grosso, Rondônia, Tocantins": false
    }
  },
  {
    "id": "9",
    "title": "Qual é a importância da indústria de tecnologia da informação (TI) para o Brasil?",
    "alternatives": {
      "Gera empregos qualificados, promove a inovação e contribui para o desenvolvimento tecnológico": true,
      "Tem baixa relevância econômica, pois é um setor em declínio no Brasil": false,
      "Depende exclusivamente de importações de tecnologia e componentes": false,
      "É responsável por altos índices de poluição e degradação ambiental": false
    }
  },
  {
    "id": "10",
    "title": "Como a indústria química tem contribuído para a economia brasileira?",
    "alternatives": {
      "Produz insumos para diversos setores, como agrícola, farmacêutico, cosmético e plástico": true,
      "Tem baixa relevância econômica, pois é um setor em declínio no Brasil": false,
      "Depende exclusivamente de importações de tecnologia e componentes": false,
      "É responsável por altos índices de poluição e degradação ambiental": false
    }
  },
  {
    "id": "11",
    "title": "Qual é o impacto da indústria na qualidade de vida da população brasileira?",
    "alternatives": {
      "Gera empregos, aumenta a renda, melhora a infraestrutura e os serviços públicos": true,
      "Causa impactos negativos na saúde, degrada o meio ambiente e aumenta o custo de vida": false,
      "Promove a exclusão social, aumenta a criminalidade e a desigualdade de renda": false,
      "Não apresenta impactos significativos na qualidade de vida da população": false
    }
  }
].map((e) => ModelQuestion.fromMap(e)).toList();
