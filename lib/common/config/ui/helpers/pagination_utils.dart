import 'package:flutter/material.dart';

Future<T?> goPage<T>({
  required BuildContext context,
  required Widget destination,
}) async {
  return Navigator.of(
    context,
  ).push(MaterialPageRoute<T>(builder: (BuildContext ctx) => destination));
}

Future<T?> goPageRemoveUntil<T>({
  required BuildContext context,
  required Widget destination,
}) async {
  return Navigator.pushAndRemoveUntil<T>(
    context,
    MaterialPageRoute<T>(builder: (_) => destination),
    (Route<dynamic> route) => false,
  );
}
