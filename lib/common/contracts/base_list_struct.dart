abstract interface class BaseListStruct<T> {
  int get statusCode;
  String get message;
  String get timestamp;
  String get path;
  List<T> get data;
}
