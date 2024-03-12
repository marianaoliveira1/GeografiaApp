// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ModelQuestion {
  final String id;
  final String title;
  final Map<String, bool> alternatives;
  ModelQuestion({
    required this.id,
    required this.title,
    required this.alternatives,
  });

  ModelQuestion copyWith({
    String? id,
    String? title,
    Map<String, bool>? alternatives,
  }) {
    return ModelQuestion(
      id: id ?? this.id,
      title: title ?? this.title,
      alternatives: alternatives ?? this.alternatives,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'alternatives': alternatives,
    };
  }

  factory ModelQuestion.fromMap(Map<String, dynamic> map) {
    return ModelQuestion(
      id: map['id'] as String,
      title: map['title'] as String,
      alternatives: Map<String, bool>.from(
        (map['alternatives'] as Map<String, bool>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelQuestion.fromJson(String source) => ModelQuestion.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ModelQuestion(id: $id, title: $title, alternatives: $alternatives)';

  @override
  bool operator ==(covariant ModelQuestion other) {
    if (identical(this, other)) return true;

    return other.id == id && other.title == title && mapEquals(other.alternatives, alternatives);
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ alternatives.hashCode;
}
