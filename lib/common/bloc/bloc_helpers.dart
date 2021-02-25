abstract class BlocState{

}
abstract class BlocEvent<S extends BlocState> {
  Stream<S> handle(S currentState);
}