import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_in_flutter/Provider/CounterProvider.dart';
import 'package:provider_in_flutter/Provider/Provider_ScreenOne.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(
          create: (context) {
            return MyModel();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ScreenOne());
  }
}
