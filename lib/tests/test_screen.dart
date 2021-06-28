import 'package:flutter/material.dart';
import 'package:teste/main.dart';

class TestScreen extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTestScreen(title: 'Test Screen'),
    );
  }
}

class MyTestScreen extends StatefulWidget {
  MyTestScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyTestScreenState createState() => _MyTestScreenState();
}

class _MyTestScreenState extends State<MyTestScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                          MaterialPageRoute(builder:
                              (context) => MyApp())
                  );
                },
                child: Text('Go back!'),
              ),
            ],
          ),
    );
  }
}
