import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class MyShopsViewModel extends SimpleListViewModel<ShopViewModel> {
  final List<ShopViewModel> list;
  final String loadingError;
  final bool isLoading;
  final String searchWith;

  @override
  List<Object> get props =>
      [
        list,
        loadingError,
        isLoading,
        searchWith,
      ];

  MyShopsViewModel({
    this.list,
    this.loadingError,
    this.isLoading,
    this.searchWith,
  }) : super(isLoading: isLoading, data: list, error: loadingError);
}

class ShopViewModel extends ViewModel {
  final String id;
  final String name;
  final String phoneNumber;
  final String location;

  ShopViewModel({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.location,
  });

  @override
  List<Object> get props =>
      [
        id,
        name,
        phoneNumber,
        location,
      ];
}
