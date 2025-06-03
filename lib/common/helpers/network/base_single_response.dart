// ignore_for_file: invalid_annotation_target
import "package:citofony_dashboard/common/contracts/base_single_struct.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "base_single_response.freezed.dart";

part "base_single_response.g.dart";

@Freezed(genericArgumentFactories: true)
abstract class BaseSingleResponse<T>
    with _$BaseSingleResponse<T>
    implements BaseSingleStruct {
  const factory BaseSingleResponse({
    required int statusCode,
    required T data,
    required String message,
    required String timestamp,
    required String path,
  }) = _BaseSingleResponse<T>;

  factory BaseSingleResponse.fromJson(
    Map<String, Object?> json,
    T Function(Object?) function,
  ) => _$BaseSingleResponseFromJson(json, function);
}
