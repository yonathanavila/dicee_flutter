import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const DicePage()),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // This widget is the root of your application.

  int leftDiceNumber = 3;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                child: Image.asset('images/$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 5;
                  });
                }),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              child: Image.asset('images/$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  rightDiceNumber = 3;
                });
              },
            ),
          ))
        ],
      ),
    );
  }
}
