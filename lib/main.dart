import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:peliculas1prueba/services/user_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Welcome to flutter',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          MaterialButton(onPressed: () async {
            UserServices().getPoke();
            print("Hola");
          }),
          Text('Hello World', textAlign: TextAlign.center),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
