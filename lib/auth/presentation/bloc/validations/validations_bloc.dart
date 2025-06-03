import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validations_bloc.freezed.dart';
part 'validations_state.dart';
part 'validations_event.dart';

class ValidationsBloc extends Bloc<ValidationsEvent, ValidationsState> {
  ValidationsBloc() : super(const ValidationsState.initial()) {}
}
