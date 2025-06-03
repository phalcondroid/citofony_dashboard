import 'package:citofony_dashboard/auth/contracts/data/response/auth_response.dart';
import 'package:citofony_dashboard/auth/data/factories/response/user_factory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_factory.freezed.dart';
part 'auth_factory.g.dart';

@freezed
abstract class AuthFactory with _$AuthFactory implements AuthResponse {
  factory AuthFactory({required String token, required UserFactory user}) =
      _AuthFactory;

  factory AuthFactory.fromJson(Map<String, dynamic> json) =>
      _$AuthFactoryFromJson(json);
}
