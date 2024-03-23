import 'package:flutter/material.dart';
class InputCard extends StatelessWidget {
  final String? text;
  InputCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(border: OutlineInputBorder(),label: Text("Voila $text"))
      ),
    );
  }
}
