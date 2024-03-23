import 'package:flutter/material.dart';
import '/screens/info_contact.dart';

class Appel extends StatefulWidget {
  const Appel({key});

  @override
  State<Appel> createState() => _AppelState();
}

class _AppelState extends State<Appel> {
  final List<String> calls = [
    "TVEJ",
  ];
/*

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appels"),
      ),
      body: ListView(
        children: calls
            .map((e) => ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(nom: "$e")));
          },
          leading: CircleAvatar(),
          title: Text("$e"),
        ))
            .toList(),
      ),
    );
  }
}