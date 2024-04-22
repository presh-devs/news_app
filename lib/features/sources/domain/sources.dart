import 'package:freezed_annotation/freezed_annotation.dart';

part 'sources.freezed.dart';
part 'sources.g.dart';

@freezed
class Sources with _$Sources {
  factory Sources({
    required String? id,
    name,
    description,
    url,
    category,
    us,
    language,
  }) = _Sources;

  factory Sources.fromJson(Map<String, dynamic> json) =>
      _$SourcesFromJson(json);  
}
