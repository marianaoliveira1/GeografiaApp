// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ModelQuiz {
  final String id;
  final String title;
  final Map<String, bool> options;
  ModelQuiz({
    required this.id,
    required this.title,
    required this.options,
  });

  ModelQuiz copyWith({
    String? id,
    String? title,
    Map<String, bool>? options,
  }) {
    return ModelQuiz(
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

  factory ModelQuiz.fromMap(Map<String, dynamic> map) {
    return ModelQuiz(
      id: map['id'] as String,
      title: map['title'] as String,
      options: Map<String, bool>.from(
        (map['options'] as Map<String, bool>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelQuiz.fromJson(String source) => ModelQuiz.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ModelQuiz(id: $id, title: $title, options: $options)';

  @override
  bool operator ==(covariant ModelQuiz other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && mapEquals(other.options, options);
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ options.hashCode;
}
