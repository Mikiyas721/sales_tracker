import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/ports/user_repo.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

@lazySingleton
class LoadLoggedInUser {
  final IUserRepo _iUserRepo;

  const LoadLoggedInUser(this._iUserRepo);

  Future<Option<User>> execute() async {
    return User.create(
      id: '603ed575e68f4c0540afb7a6',
      name: Name.create('Mikiyas Tesfaye').getOrElse(() => null),
      phoneNumber: PhoneNumber.create('+251941135730').getOrElse(() => null),
    );
    return _iUserRepo.getCurrentLoggedInUser();
  }
}
