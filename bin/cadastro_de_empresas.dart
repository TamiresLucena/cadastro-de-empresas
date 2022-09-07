import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/partner.dart';

void main(List<String> arguments) {
  final ambev = Company(
      '222',
      'AMBEV',
      'AMBEV',
      'registrationNumber',
      Address('street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
      'phoneNumber',
      DateTime.now(),
      Partner(
          'companyName',
          'commercialName',
          'registrationNumber',
          Address(
              'street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
          'J'));

  print(ambev.address.number);
}
