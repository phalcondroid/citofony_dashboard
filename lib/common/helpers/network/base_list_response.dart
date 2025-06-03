// ignore_for_file: invalid_annotation_target
import "package:citofony_dashboard/common/contracts/base_list_struct.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "base_list_response.freezed.dart";

part "base_list_response.g.dart";

@Freezed(genericArgumentFactories: true, fromJson: true)
abstract class BaseListResponse<T>
    with _$BaseListResponse<T>
    implements BaseListStruct {
  factory BaseListResponse({
    required int statusCode,
    required List<T> data,
    required String message,
    required String timestamp,
    required int count,
    required String path,
  }) = _BaseListResponse<T>;

  factory BaseListResponse.fromJson(
    Map<String, Object?> json,
    T Function(Object?) function,
  ) => _$BaseListResponseFromJson(json, function);
}
