import 'package:flutter/material.dart';

class EvenNumber extends StatefulWidget {
  final List<int> evenNumbers;

  const EvenNumber({Key? key, required this.evenNumbers}) : super(key: key);

  @override
  _EvenNumberState createState() => _EvenNumberState();
}

class _EvenNumberState extends State<EvenNumber> {
  late List<bool?> _isChecked;
  var tmpArray = [];

  // getValue(){
  //  for(int i = 1; i <= _isChecked.length; i++){
  //    if(_isChecked[i] == true){
  //      tmpArray.add(widget.evenNumbers[i]);
  //    }
  //  }
  //  print(tmpArray);
  // }

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.evenNumbers.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Even Number"),
      ),
      body: ListView.builder(
        itemCount: widget.evenNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
              title: Text(widget.evenNumbers[index].toString()),
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
        onPressed: () {
          // getValue();
        },
      ),
    );
  }
}
