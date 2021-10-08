// ignore_for_file: prefer_final_fields



import 'package:flutter/material.dart';
import 'package:odd_even_generator/screens/even_number.dart';
import 'package:odd_even_generator/screens/odd_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// ignore: duplicate_ignore
class _HomePageState extends State<HomePage> {
  List<int> _oddNumbers = [];
  List<int> _evenNumbers = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Odd Even numbers"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    for (int i = 2; i <= 100; i = i + 2) {
                      _evenNumbers.add(i);
                    }
                    print(_evenNumbers);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            EvenNumber(evenNumbers: _evenNumbers)));
                  },
                  child: const Text("Even numbers"),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    for (int i = 1; i <= 100; i = i + 2) {
                      _oddNumbers.add(i);
                    }
                    print(_oddNumbers);
                     Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            OddNumber(oddNumbers: _oddNumbers)));
                  },
                  child: const Text("Odd numbers"),
                ),
              ),
            ),
          ],
        ));
  }
}
