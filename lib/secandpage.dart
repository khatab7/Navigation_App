import 'dart:async';
import 'package:flutter/material.dart';
import 'package:navcate/thirdpage.dart';

class SecPage extends StatefulWidget {
  int counter;
  SecPage({Key? key, required this.counter}) : super(key: key);

  @override
  State<SecPage> createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  void _incrementCounter() {
    setState(() {
      widget.counter = widget.counter + 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Second Page',
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              Navigator.of(context).pop(widget.counter);
            });
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
                onPressed: () async {
                  final completer = Completer();
                  final result = await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ThirdPage(
                              counter: widget.counter,
                            )),
                    result: completer.future,
                  );
                  completer.complete(result);
                },
                child: const Text(
                  '<Goto_Third>',
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
