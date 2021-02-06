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
      body: Column(
        children: [
          100.vSpace,
          Text('Enter\ndetails'),
          100.vSpace,
          SaleView(saleViewModel: SaleViewModel(phoneNumber: '251 941135730'))
        ],
      ),
    );
  }
}
