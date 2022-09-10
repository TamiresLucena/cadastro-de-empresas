import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legal_person.dart';
import 'package:cadastro_de_empresas/natural_person.dart';
import 'package:uuid/uuid.dart';

void main(List<String> arguments) {
  final ambev = Company(
      Uuid().v1(),
      'AMBEV',
      'AMBEV',
      'registrationNumber',
      Address('street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
      'phoneNumber',
      DateTime.now(),
      LegalPerson(
          'COCA-COLA',
          'COCA-COLA COMMERCIAL',
          'registrationNumber',
          Address(
              'street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
          'J'));

  final magalu = Company(
      Uuid().v1(),
      'MAGALU',
      'MAGALU',
      'registrationNumber',
      Address('street', 170, 'complement', 'neighborhood', 'state', 'zipCode'),
      'phoneNumber',
      DateTime.now(),
      NaturalPerson(
          'TAMIRES',
          'registrationNumber',
          Address(
              'street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
          'F'));

  print(ambev.partner.commercialName);
  print(magalu.partner.commercialName);
}
