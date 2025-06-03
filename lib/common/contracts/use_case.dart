abstract interface class UseCase<O, I> {
  Future<O> exec(I params);
}
