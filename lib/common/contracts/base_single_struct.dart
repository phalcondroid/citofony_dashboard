abstract interface class BaseSingleStruct<T> {
  int get statusCode;
  String get message;
  String get timestamp;
  String get path;
  T get data;
}
