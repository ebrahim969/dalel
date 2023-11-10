import 'package:dalel_app/core/database/caches/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/dalel_app.dart';
import 'core/functions/check_user_state.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CachHelper>().init();
  checkUserState();
  runApp(const Dalel());
}