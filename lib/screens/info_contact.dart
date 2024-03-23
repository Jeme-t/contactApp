import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String? nom;
  String? mail;
  String ? prenom;
  String? numero;
  Details({super.key, this.nom, this.numero, this.mail, this.prenom});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.prenom} ", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: [
          Container(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Color (0x8E72AFEE),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Nom:"),
                              Text("${widget.nom}"),
                              Text("Prenom:"),
                              Text("${widget.prenom}"),
                            ],
                          ),
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(10.0),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Numero:"),
                              Text("${widget.numero}"),
                              Text("email:"),
                              Text("${widget.mail}")
                            ],

                          ),
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.all(10),),
                      ],
                    ),
                  )
                ],
              ),


            ),
          ),
        ],
      ),
    );
  }
}
