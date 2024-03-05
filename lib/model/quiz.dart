// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:geografia/model/question.dart';

class ModelQuiz {
  final String id;
  final String title;
  final String image;
  final List<ModelQuestion> questions;
  ModelQuiz({
    required this.id,
    required this.title,
    required this.image,
    required this.questions,
  });

  ModelQuiz copyWith({
    String? id,
    String? title,
    String? image,
    List<ModelQuestion>? questions,
  }) {
    return ModelQuiz(
      id: id ?? this.id,
      title: title ?? this.title,
      image: image ?? this.image,
      questions: questions ?? this.questions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'questions': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory ModelQuiz.fromMap(Map<String, dynamic> map) {
    return ModelQuiz(
      id: map['id'] as String,
      title: map['title'] as String,
      image: map['image'] as String,
      questions: List<ModelQuestion>.from(
        (map['questions'] as List<int>).map<ModelQuestion>(
          (x) => ModelQuestion.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelQuiz.fromJson(String source) => ModelQuiz.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelQuiz(id: $id, title: $title, image: $image, questions: $questions)';
  }

  @override
  bool operator ==(covariant ModelQuiz other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && other.image == image && listEquals(other.questions, questions);
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ image.hashCode ^ questions.hashCode;
  }
}
