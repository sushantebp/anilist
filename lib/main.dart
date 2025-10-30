import 'package:anilist/app_bloc_observer.dart';
import 'package:anilist/app_provider.dart';
import 'package:anilist/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  setupDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(const AppProvider());
}
