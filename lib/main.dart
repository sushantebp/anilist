import 'package:anilist/app_provider.dart';
import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  setupDependencies();
  runApp(const AppProvider());
}
