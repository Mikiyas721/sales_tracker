abstract class Failure{
  String get message;
}


class SimpleFailure implements Failure{
  final String message;

  const SimpleFailure(this.message);

}