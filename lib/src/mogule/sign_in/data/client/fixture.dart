import 'package:flutter/services.dart' show rootBundle;

Future<String> fixture(String name) async {
  final res = await rootBundle.loadString('assets/json/$name.json');
  return res;
}
