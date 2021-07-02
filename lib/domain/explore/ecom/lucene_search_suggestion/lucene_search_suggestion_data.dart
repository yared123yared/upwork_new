import 'package:freezed_annotation/freezed_annotation.dart';
part 'lucene_search_suggestion_data.freezed.dart';
part 'lucene_search_suggestion_data.g.dart';

@freezed
abstract class LuceneSearchSuggestionData with _$LuceneSearchSuggestionData {
  factory LuceneSearchSuggestionData({
    @JsonKey(name: 'pid') String pid,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'luceneid') String luceneid,
  }) = _LuceneSearchSuggestionData;
  factory LuceneSearchSuggestionData.fromJson(Map<String, dynamic> json) =>
      _$LuceneSearchSuggestionDataFromJson(json);
//require keysetting
}
