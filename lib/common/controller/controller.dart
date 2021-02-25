import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../view_model.dart';

String emptyFunc(any) => "";

String nullFunc(any) => null;

emptyIf(bool flag, String value) {
  return flag ? "" : value;
}

nullIf(bool flag, String value) {
  return flag ? null : value;
}


abstract class Controller {
  dispose();
}

abstract class BlocController<B extends Bloc<E, S>, E, S> implements Controller {
  final B bloc;
  final bool ownsBloc;
  S _currentState;
  StreamSubscription<S> _sub;

  BlocController(this.bloc, this.ownsBloc) {
    _currentState = bloc.state;
    _sub = bloc.listen((newState) {
      onStateChanged(_currentState, newState);
      _currentState = newState;
    });
  }

  onStateChanged(S previousState, S currentState);

  @override
  dispose() {
    _sub.cancel();
    if (ownsBloc) {
      bloc.close();
    }
  }
}

abstract class MultiBlocController implements Controller {
  final List<Bloc> blocs;
  List<StreamSubscription> _subs;

  MultiBlocController(this.blocs) {
    _subs = blocs.map((bloc) {
      return bloc.listen((newState) {
        onStatesChanged(_currentStates);
      });
    }).toList();
  }

  List get _currentStates {
    return blocs.map((b) => b.state).toList();
  }

  onStatesChanged(List states);

  @override
  dispose() {
    _subs.forEach((sub) => sub.cancel());
  }
}

abstract class ViewModelController<VM extends ViewModel> implements Controller {
  Stream<ViewModel> get viewModelStream;
}

abstract class BlocViewModelController<B extends Bloc<E, S>, E, S, VM extends ViewModel>
    extends BlocController<B, E, S> implements ViewModelController<VM> {
  BehaviorSubject<VM> _subject;
  final List<StreamSubscription> subs = [];

  BlocViewModelController(B bloc, bool ownsBloc) : super(bloc, ownsBloc) {
    _subject = BehaviorSubject.seeded(mapStateToViewModel(_currentState));
  }

  VM mapStateToViewModel(S s);

  VM get currentViewModel {
    return _subject.value;
  }

  BehaviorSubject<VM> get viewModelStream {
    return _subject;
  }

  listen(Stream s) {
    subs.add(s.listen((event) {
      onStateChanged(bloc.state, bloc.state);
    }));
  }

  @override
  onStateChanged(S currentState, S newState) {
    final newViewModel = mapStateToViewModel(newState);
    if (currentViewModel != newViewModel) {
      _subject.add(newViewModel);
    }
  }

  @override
  dispose() {
    super.dispose();
    _subject.close();
    subs.forEach((e) => e.cancel());
  }
}

abstract class MultiBlocViewModelController<VM extends ViewModel> extends MultiBlocController
    implements ViewModelController<VM> {
  BehaviorSubject<VM> _subject;

  MultiBlocViewModelController(List<Bloc> blocs) : super(blocs) {
    _subject = BehaviorSubject.seeded(mapStatesToViewModel(_currentStates));
  }

  VM mapStatesToViewModel(List states);

  VM get currentViewModel {
    return _subject.value;
  }

  Stream<VM> get viewModelStream {
    return _subject;
  }

  @override
  onStatesChanged(List states) {
    final newViewModel = mapStatesToViewModel(states);
    if (currentViewModel != newViewModel) {
      _subject.add(newViewModel);
    }
  }

  @override
  dispose() {
    super.dispose();
    _subject.close();
  }
}
