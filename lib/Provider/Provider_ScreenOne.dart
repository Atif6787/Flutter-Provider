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
        title: const Text("Screen One"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${myModel.counter}', style: const TextStyle(fontSize: 40)),
            ElevatedButton(
              onPressed:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ScreenTwo()),
                  ),
              child: const Text("Next Screen"),
            ),
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
