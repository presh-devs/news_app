
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/features/sources/domain/sources.dart';

part 'sources_response.g.dart';
part 'sources_response.freezed.dart';

@freezed
class SourceResponse with _$SourceResponse {
  factory SourceResponse({
    
    required List<Sources> sources,
   
   
    @Default([]) List<String> errors,
  }) = _SourceResponse;

  factory SourceResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceResponseFromJson(json);
}