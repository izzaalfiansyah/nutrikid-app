import 'package:flutter_dotenv/flutter_dotenv.dart';

String letterName(String name) {
  if (name.isEmpty) {
    return letterName(dotenv.get('APP_NAME'));
  }

  final names = name.split(' ');

  if (names.isEmpty) {
    return letterName(dotenv.get('APP_NAME'));
  }

  if (names.length > 1) {
    return names[0][0] + names[1][0];
  }

  return names[0][0] + names[0][1];
}
