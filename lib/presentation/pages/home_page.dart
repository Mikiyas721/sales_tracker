import 'package:flutter/material.dart';
import '../../presentation/models/home_view_model.dart';
import '../../presentation/views/home_view.dart';
import '../../presentation/widgets/my_button.dart';
import '../../common/common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: () {})],
      ),
      body: Column(children: [
        100.vSpace,
        HomeView(
          homeViewModel: HomeViewModel(soldToday: '500', remainingLoan: '200'),
        ),
        Spacer(),
        Row(
          children: [
            MyButton(label: 'Add Shop', onSubmit: () {}),
            MyButton(label: 'My Shops', onSubmit: () {}),
          ],
        )
      ]),
    );
  }
}
