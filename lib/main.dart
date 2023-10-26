import 'package:flutter/material.dart';
import 'package:news/layout/home_layout.dart';
import 'package:news/screens/splash_screen.dart';

import 'package:easy_localization/easy_localization.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('ar'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.RouteName,
      routes: {
        HomeLayout.RouteName: (context) => HomeLayout(),
        SplashScreen.RouteName: (context) => SplashScreen()
      },
    );
  }
}
