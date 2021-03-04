import 'package:flutter_test/flutter_test.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_cash_transaction.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';
import 'package:sales_tracker/injection.dart';

main() {
  setUpAll(() {
    configureDependencies();
  });
  test(
    "should create fund transaction",
    () async {
      final fundTransaction = CashTransaction.createFromInputs(
              amount: CashAmount.createFromNumForFund(10).getOrElse(() => null),
              salesPersonId: "sdljkfslkdjfslkdjf",
              shopId: "asdjklhalsdklasd")
          .getOrElse(() => null);

      final createFundTransaction = getIt.get<AddCashTransaction>();
      final result = await createFundTransaction.execute(fundTransaction);

      result.fold((l) {}, (r) {});

      expect(result.isRight(), true);
    },
  );
}
