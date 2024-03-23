import 'package:flutter/material.dart';
import '/components/input_card.dart';
import '/models/new_contacts.dart';
class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    List<NouveauContact>;

    GlobalKey <FormState> _formkey = GlobalKey <FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter Contact"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              InputCard(text:"Nom"),
              InputCard(text:"Prenom"),
              InputCard(text:"Mail"),
              InputCard(text:"Numéro"),
              TextButton(onPressed: () async{
                var date =  await showDatePicker(context: context,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2025));
              }, child: Text("Date de naissance")),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Retour", style: TextStyle(color: Colors.redAccent),)

                  ),
                  ElevatedButton(onPressed: (){
                    //Navigator.pop(context, );
                    if(_formkey.currentState!.validate()){
                      String nom = TextEditingController().text;
                      String prenom = TextEditingController().text;
                      String mail = TextEditingController().text;
                      String numero = TextEditingController().text;
                      DateTime? dateNaissance;
                      NouveauContact nouveauContact = NouveauContact(
                        nom: nom,
                        prenom: prenom,
                        numero: numero,
                        datenaissance: dateNaissance,
                        mail: mail,
                      );
                      Navigator.pop(context, nouveauContact);
                    }
                    ;

                  }, child: Text("Terminer"))
                ],
              )
              ]
          ),
        ),
      ),
    );
  }
}
