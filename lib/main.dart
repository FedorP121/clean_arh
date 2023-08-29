import 'package:clean_arh/my_app.dart';

import 'package:flutter/material.dart';

import 'src/core/service_locator/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configure();

  runApp(const MyApp());
}
