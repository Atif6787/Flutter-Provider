import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CounterProvider.dart';
import 'Provider_ScreenTwo.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final myModel = Provider.of<MyModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Screen One"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Counter Value:",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '${myModel.counter}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 50, color: Colors.blueAccent),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScreenTwo()),
                  ),
              child: const Text(
                "Go to Next Screen",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: myModel.increaseValue,
        label: const Text("Increment"),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
