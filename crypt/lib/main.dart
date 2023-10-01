import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.yellow,
        textTheme:  TextTheme(

          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20
          ),

          labelSmall: TextStyle(
                color: Colors.white.withOpacity(0.65),
                fontWeight: FontWeight.w600,
                fontSize: 14,
          )
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Crypt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


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
        backgroundColor: Colors.yellow,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 20 ,
        itemBuilder: (context, i)=> ListTile(
          title: Text(
            'bit butcket',
            style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(
              '27500\$',
              style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
