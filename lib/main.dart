import 'package:flutter/material.dart';
import 'package:lets_git_it/screens/home_screen.dart';
import 'package:lets_git_it/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child) {
          return MaterialApp(
            title: 'Flutter Theme Provider',

            ///TODO: Complete color mode selection with icon in app drawer
            theme: notifier.darkTheme ? dark : light,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
