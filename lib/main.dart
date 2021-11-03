import 'package:flutter/material.dart';

void main() {
  //runApp(const MyApp());
  runApp(MaterialApp(
  initialRoute: '/',
  routes: {
  '/': (context) => const MyApp(),
  '/second': (context) => MyHomePage(title: "owais demo page"),
  '/third': (context) => ThirdRoute(),
  },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Geeks for Geeks'),
          backgroundColor: Colors.green,
        ),
        body: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(onPressed: (){
                //Navigator.push(context, route{})
                Navigator.pushNamed(context, '/second');
              },
                child: Text("Click Me"),
              ),
              RaisedButton(onPressed: (){
                //Navigator.push(context, route{})
                Navigator.pushNamed(context, '/third');
              },
                child: Text("Next>>"),
              )
            ],
          ),
        ),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.end,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.left,
            ),
          ],
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

class ThirdRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap Me Page"),
        backgroundColor: Colors.green,
      ),
    );
  }


}
