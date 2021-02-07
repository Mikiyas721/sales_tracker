import 'package:flutter/material.dart';
import '../../presentation/models/sale_view_model.dart';
import '../../presentation/views/sale_view.dart';
import '../../common/common.dart';

class SalePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sale'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\ndetails',
                style: context.headline3,
              ),
              100.vSpace,
              SaleView(
                saleViewModel: SaleViewModel(phoneNumber: '251 941135730'),
                onRegister: () {},
              ),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
