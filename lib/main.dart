import 'package:flutter/material.dart';
import 'storybrain.dart';

void main() {
  runApp(MyApp());
}
storybrain a=storybrain();
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Destini'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.png'), fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(
                child: Expanded(
                  child: Container(
                    child: Text(
                      a.Getstory(),
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    padding: EdgeInsets.only(
                        left: 20, top: 30, right: 20, bottom: 30),
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        a.nextstory(2);
                      });
                      a.nextstory(2);
                    },
                    child: Text(
                      a.getchoice1(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Visibility(
                    visible: a.buttonshouldbevisible(),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          a.nextstory(1);
                        });

                      },
                      child: Text(
                        a.getchoice2(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
// uhikbuhdsu