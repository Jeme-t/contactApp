
import 'dart:async';

class NouveauContact{
  String? nom;
  String ? prenom;
  String? numero;
  String? mail;
  DateTime ? datenaissance;
  NouveauContact({
    this.nom,
    this.numero,
    this.datenaissance,
    this.mail,
    required this.prenom,
  });
}