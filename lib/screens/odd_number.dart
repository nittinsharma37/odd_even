import 'package:flutter/material.dart';

class OddNumber extends StatefulWidget {
  final List<int> oddNumbers;

  const OddNumber({Key? key, required this.oddNumbers}) : super(key: key);

  @override
  _OddNumberState createState() => _OddNumberState();
}

class _OddNumberState extends State<OddNumber> {
  late List<bool?> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.oddNumbers.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Even Number"),
      ),
      body: ListView.builder(
        itemCount: widget.oddNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
              title: Text(widget.oddNumbers[index].toString()),
              value: _isChecked[index],
              onChanged: (val) {
                setState(() {
                  _isChecked[index] = val;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Sum"),
        onPressed: () {},
      ),
    );
  }
}
