import 'package:flutter/material.dart';
import '../../presentation/models/home_view_model.dart';
import '../../common/common.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel homeViewModel;

  const HomeView({Key key, @required this.homeViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('${homeViewModel.soldToday} ETB'),
      Text('Sold today'),
      60.vSpace,
      Text('${homeViewModel.remainingLoan} ETB loan remaining'),
    ]);
  }
}
