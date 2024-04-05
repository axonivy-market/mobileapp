import 'package:freezed_annotation/freezed_annotation.dart';

part 'customfield.freezed.dart';

part 'customfield.g.dart';

@freezed
class CustomField with _$CustomField {
  factory CustomField({
    @Default('') String name,
    @Default('') String value,
  }) = _CustomField;

  factory CustomField.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldFromJson(json);
}
