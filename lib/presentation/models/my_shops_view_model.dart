import 'package:flutter/material.dart';
import 'package:sales_tracker/common/view_model.dart';

class MyShopsViewModel<ShopViewModel> extends ListViewModel {
  MyShopsViewModel({
    List<ShopViewModel> list,
    bool hasLoaded,
    String loadingError,
    bool isLoading,
  }) : super(
            list: list,
            hasLoaded: hasLoaded,
            loadingError: loadingError,
            isLoading: isLoading);
}

class ShopViewModel extends ViewModel {
  final String name;
  final String phoneNumber;
  final String location;

  ShopViewModel({
    @required this.name,
    @required this.phoneNumber,
    @required this.location,
  });

  @override
  List<Object> get props => [
        name,
        phoneNumber,
        location,
      ];
}
