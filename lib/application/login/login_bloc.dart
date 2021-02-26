import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial());

  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.handle(state);
  }

}
