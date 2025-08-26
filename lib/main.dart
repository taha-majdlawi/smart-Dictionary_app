import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:smart_dictionary_app/core/constants/theme_data.dart';
import 'package:smart_dictionary_app/providers/theme_provider.dart';
import 'package:smart_dictionary_app/root_screend.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme,
              context: context,
            ),
            home: RootScreen(),
          );
        },
      ),
    );
  }
}
