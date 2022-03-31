import 'package:flutter/material.dart';
import 'package:gradient_floating_button/gradient_floating_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gradient Floating Button Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GradientFloatingButton().withLinearGradient(
              onTap: _incrementCounter,
              iconWidget: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              alignmentEnd: Alignment.topRight,
              alignmentBegin: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.purpleAccent]),
          const SizedBox(
            height: 10,
          ),
          GradientFloatingButton().withRadialGradient(
              onTap: _incrementCounter,
              iconWidget: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              radius: 0.4,
              colors: [Colors.indigo, Colors.blue])
        ],
      ),
    );
  }
}
