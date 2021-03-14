import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/my_shops/my_shops_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/debouncer.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/use_cases/fetch_shops.dart';
import 'package:sales_tracker/domain/use_cases/search_shop.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/my_shops_view_model.dart';
import '../../application/splash/splash_bloc.dart';

class MyShopsController extends BlocViewModelController<MyShopsBloc,
    MyShopsEvent, MyShopsState, MyShopsViewModel> with ToastMixin {
  final BuildContext context;
  final DeBouncer deBouncer = DeBouncer(milliseconds: 500);
  User user;

  MyShopsController(this.context) : super(getIt.get<MyShopsBloc>(), true);

  @override
  MyShopsViewModel mapStateToViewModel(MyShopsState s) {
    return MyShopsViewModel(
      list: s.shops
          ?.map((e) => ShopViewModel(
                id: e.id,
                name: e.name.value,
                phoneNumber: e.phoneNumber.value,
                location: e.address.value,
              ))
          ?.toList(),
      isLoading: s.isLoading,
      loadingError: s.myShopsLoadingFailure?.getOrElse(() => null)?.message,
      searchWith: s.searchWith,
    );
  }

  void loadShops() async {
    bloc.add(MyShopsLoadingEvent());
    final user = getIt.get<SplashBloc>().state.user;
    user.fold(() {
      bloc.add(
          MyShopsLoadingFailedEvent(SimpleFailure("Undefined Salesperson")));
      toastError("Undefined Salesperson");
    }, (salesperson) {
      _loadAllShops(salesperson);
    });
  }

  void onRegister() {
    Navigator.pushNamed(context, '/newShopPage');
  }

  void onSearchWithSelected(String value) {
    bloc.add(MyShopsSearchWithChangedEvent(value));
  }

  void onSearch(String value) {
    deBouncer.run(() {
      if ((value == '' || value == null) && user == null)
        loadShops();
      else if ((value == '' || value == null) && user != null)
        _loadAllShops(user);
      else if (user == null) {
        final user = getIt.get<SplashBloc>().state.user;
        user.fold(() {
          bloc.add(MyShopsLoadingFailedEvent(
              SimpleFailure("Undefined Salesperson")));
          toastError("Undefined Salesperson");
        }, (salesperson) {
          _search(salesperson, value);
        });
      } else {
        _search(user, value);
      }
    });
  }

  void _loadAllShops(User salesperson) async {
    this.user = salesperson;
    final fetchShopsResult =
        await getIt.get<FetchShops>().execute(salesperson.id);
    fetchShopsResult.fold((l) {
      bloc.add(MyShopsLoadingFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(MyShopsLoadingSucceededEvent(r));
    });
  }

  void _search(User user, String value)async {
    this.user = user;
    final fetchShopsResult =
        await getIt.get<SearchShop>().execute(user.id,bloc.state.searchWith,value);
    fetchShopsResult.fold((l) {
      bloc.add(MyShopsLoadingFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(MyShopsLoadingSucceededEvent(r));
    });
  }
}
