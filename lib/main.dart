import 'package:flutter/material.dart';
import 'package:myRefereeAI/di.dart';
import 'package:myRefereeAI/presenter/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(
    GlobalBlocProviders(
      child: MyRefereeAI(),
    ),
  );
}
