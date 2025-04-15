import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CounterProvider.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
        backgroundColor: const Color.fromARGB(255, 225, 158, 154),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You selected number", style: TextStyle(fontSize: 20)),
            Text('${myModel.counter}', style: const TextStyle(fontSize: 40)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: myModel.increaseValue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
