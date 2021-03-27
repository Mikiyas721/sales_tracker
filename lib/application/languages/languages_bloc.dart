import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';

part 'languages_event.dart';
part 'languages_state.dart';

part 'languages_bloc.freezed.dart';

@injectable
class LanguagesBloc extends Bloc<LanguagesEvent, LanguagesState> {
  LanguagesBloc() : super(LanguagesState.initial());

  @override
  Stream<LanguagesState> mapEventToState(
    LanguagesEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
