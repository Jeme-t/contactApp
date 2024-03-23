import 'package:flutter/material.dart';
class Favories extends StatelessWidget {
  List <String> favories;
  Favories({super.key, required this.favories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoris"),
      ),
      body
          : ListView(
        children: favories
            .map((e) => ListTile(
          leading: CircleAvatar(),
          title: Text("$e"),
          trailing: Icon(Icons.favorite, color: Colors.red,),
        )).toList(),
      ),
    );
  }
}

