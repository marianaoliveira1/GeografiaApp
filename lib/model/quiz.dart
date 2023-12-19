// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ModelQuiz {
  String enuncioado;
  List<String> alternativas;
  int alternativaCorretaIndex;
  String imagemUrl;
  ModelQuiz({
    required this.enuncioado,
    required this.alternativas,
    required this.alternativaCorretaIndex,
    required this.imagemUrl,
  });

  ModelQuiz copyWith({
    String? enuncioado,
    List<String>? alternativas,
    int? alternativaCorretaIndex,
    String? imagemUrl,
  }) {
    return ModelQuiz(
      enuncioado: enuncioado ?? this.enuncioado,
      alternativas: alternativas ?? this.alternativas,
      alternativaCorretaIndex: alternativaCorretaIndex ?? this.alternativaCorretaIndex,
      imagemUrl: imagemUrl ?? this.imagemUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enuncioado': enuncioado,
      'alternativas': alternativas,
      'alternativaCorretaIndex': alternativaCorretaIndex,
      'imagemUrl': imagemUrl,
    };
  }

  factory ModelQuiz.fromMap(Map<String, dynamic> map) {
    return ModelQuiz(
      enuncioado: map['enuncioado'] as String,
      alternativas: List<String>.from((map['alternativas'] as List<String>),
      alternativaCorretaIndex: map['alternativaCorretaIndex'] as int,
      imagemUrl: map['imagemUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelQuiz.fromJson(String source) => ModelQuiz.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelQuiz(enuncioado: $enuncioado, alternativas: $alternativas, alternativaCorretaIndex: $alternativaCorretaIndex, imagemUrl: $imagemUrl)';
  }

  @override
  bool operator ==(covariant ModelQuiz other) {
    if (identical(this, other)) return true;
  
    return 
      other.enuncioado == enuncioado &&
      listEquals(other.alternativas, alternativas) &&
      other.alternativaCorretaIndex == alternativaCorretaIndex &&
      other.imagemUrl == imagemUrl;
  }

  @override
  int get hashCode {
    return enuncioado.hashCode ^
      alternativas.hashCode ^
      alternativaCorretaIndex.hashCode ^
      imagemUrl.hashCode;
  }
}
