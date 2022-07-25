

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medicare/l10n/l10n.dart';
import 'package:medicare/login/login.dart';
import 'package:medicare/screens/dashscreen.dart';
import 'package:medicare/signup/signup.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: const Color(0xFF13B9FF),
          ),
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
       home: LoginScreen(),
      ),
    );
  }
}



///
class MyCustomScrollBehavior extends MaterialScrollBehavior {

  @override
  Widget buildOverscrollIndicator(
    BuildContext context, Widget child, ScrollableDetails details,) {
    return child;
  }
}