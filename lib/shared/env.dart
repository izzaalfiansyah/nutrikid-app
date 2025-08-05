import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final APP_KEY = dotenv.get('APP_KEY', fallback: "");

  static final APP_NAME = dotenv.get('APP_NAME', fallback: "NutriKid");

  static final APP_DESCRIPTION = dotenv.get('APP_DESCRIPTION', fallback: "");

  // static const APP_BASE_URL = 'http://localhost:3000/api';
  static final APP_BASE_URL = dotenv.get(
    'APP_BASE_URL',
    fallback: "http://localhost:3000/api",
  );
}
