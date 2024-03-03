// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ModelQuestion {
  final String id;
  final String title;
  final Map<String, bool> options;
  ModelQuestion({
    required this.id,
    required this.title,
    required this.options,
  });

  ModelQuestion copyWith({
    String? id,
    String? title,
    Map<String, bool>? options,
  }) {
    return ModelQuestion(
      id: id ?? this.id,
      title: title ?? this.title,
      options: options ?? this.options,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'options': options,
    };
  }

  factory ModelQuestion.fromMap(Map<String, dynamic> map) {
    return ModelQuestion(
      id: map['id'] as String,
      title: map['title'] as String,
      options: Map<String, bool>.from(
        (map['options'] as Map<String, bool>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelQuestion.fromJson(String source) => ModelQuestion.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ModelQuiz(id: $id, title: $title, options: $options)';

  @override
  bool operator ==(covariant ModelQuestion other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && mapEquals(other.options, options);
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ options.hashCode;
}
