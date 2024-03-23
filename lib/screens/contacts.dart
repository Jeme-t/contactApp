import 'package:flutter/material.dart';
import '/screens/ajt_contact.dart';
import '/models/new_contacts.dart';
import '/screens/info_contact.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<NouveauContact> contactListe = [];
  List<String> favoriteContact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
        ],
      ),
      body:
      ListView.builder(
        itemCount: contactListe.length,
        itemBuilder: (context, index) {
          final contact = contactListe[index];
          return ListTile(
            leading: CircleAvatar(),
            title: Text("${contact.prenom}"),
            subtitle: Text("${contact.nom}"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(nom: "${contact.nom}", mail: "${contact.mail}",prenom: "${contact.prenom}",numero: "${contact.numero}",)));
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newContact = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact()));
          if (newContact != null) {
            setState(() {
              contactListe.add(newContact);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
