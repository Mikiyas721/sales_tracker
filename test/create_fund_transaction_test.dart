import 'package:flutter_test/flutter_test.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/use_cases/create_fund_transaction.dart';
import 'package:sales_tracker/injection.dart';

main() {
  setUpAll(() {
    configureDependencies();
  });
  test(
    "should create fund transaction",
    () async {
      final fundTransaction = FundTransaction.createSimple(
              amount: 10, salesPersonId: "sdljkfslkdjfslkdjf", shopId: "asdjklhalsdklasd")
          .getOrElse(() => null);

      final createFundTransaction = getIt.get<CreateFundTransaction>();
      final result = await createFundTransaction.execute(fundTransaction);

      result.fold((l) {

      }, (r) {});

      expect(result.isRight(), true);
    },
  );
}
