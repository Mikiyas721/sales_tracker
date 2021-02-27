import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class ViewModel extends Equatable {}

abstract class ListViewModel<T> extends ViewModel {
  final bool isLoading;
  final bool hasLoaded;
  final String loadingError;
  final List<T> list;

  ListViewModel({
    @required this.list,
    @required this.hasLoaded,
    @required this.loadingError,
    @required this.isLoading,
  });

  @override
  List<Object> get props => [isLoading, hasLoaded, list];
}
