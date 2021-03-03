import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';

abstract class AddressFailure extends Failure{}

class ShortAddressFailure extends AddressFailure{
  @override
  String get message => 'Address is too short';

}
class LongAddressFailure extends AddressFailure{
  @override
  String get message => 'Address is too long';
}
class Address{
  final String value;

  Address._(this.value);

  static Either<AddressFailure,Address> create(String addressString){
    if(addressString.length<2) return left(ShortAddressFailure());
    if(addressString.length>20) return left(LongAddressFailure());
    return right(Address._(addressString));
  }
}