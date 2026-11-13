import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Button')),
        body: Column(children: [CustomButton()]),
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: () {}, child: Text('Submit'));
  }
}
