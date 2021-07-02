// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lucene_search_suggestion_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LuceneSearchSuggestionData _$_$_LuceneSearchSuggestionDataFromJson(
    Map<String, dynamic> json) {
  return _$_LuceneSearchSuggestionData(
    pid: json['pid'] as String,
    text: json['text'] as String,
    luceneid: json['luceneid'] as String,
  );
}

Map<String, dynamic> _$_$_LuceneSearchSuggestionDataToJson(
    _$_LuceneSearchSuggestionData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pid', instance.pid);
  writeNotNull('text', instance.text);
  writeNotNull('luceneid', instance.luceneid);
  return val;
}
