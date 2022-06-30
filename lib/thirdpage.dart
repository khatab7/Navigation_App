import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  int counter;
  ThirdPage({Key? key, required this.counter}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  void _incrementCounter() {
    setState(() {
      widget.counter = widget.counter + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('third page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            int newcounter = widget.counter;
            Navigator.of(context).pop(newcounter);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop(widget.counter);
                },
                child: const Text(
                  'Go_Back>',
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
