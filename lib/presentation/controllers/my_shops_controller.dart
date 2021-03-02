import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/my_shops/my_shops_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_shop.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/my_shops_view_model.dart';

class MyShopsController extends BlocViewModelController<MyShopsBloc,
    MyShopsEvent, MyShopsState, MyShopsViewModel> with ToastMixin {
  final BuildContext context;

  MyShopsController(this.context) : super(getIt.get<MyShopsBloc>(), true);

  @override
  MyShopsViewModel mapStateToViewModel(MyShopsState s) {
    return MyShopsViewModel(
        list: s.shops
            .map((e) => ShopViewModel(
                  name: e.name.value,
                  phoneNumber: e.phoneNumber.value,
                  location: e.address.value,
                ))
            .toList(),
        isLoading: s.isLoading,
        loadingError: s.myShopsLoadingFailure != null
            ? s.myShopsLoadingFailure.message
            : null);
  }

  void loadShops() async {
    bloc.add(MyShopsLoadingEvent());
    final fetchShopsResult = await getIt.get<FetchShops>().execute();
    fetchShopsResult.fold((l) {
      bloc.add(MyShopsLoadingFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(MyShopsLoadingSucceededEvent(r));
    });
  }
}
