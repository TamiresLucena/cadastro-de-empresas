import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/database.dart';
import 'package:cadastro_de_empresas/legal_person.dart';
import 'package:cadastro_de_empresas/natural_person.dart';
import 'package:uuid/uuid.dart';

void main(List<String> arguments) {
  final ambev = Company(
      Uuid().v1(),
      'AMBEV',
      'AMBEV COMMERCIAL',
      '16391051000121',
      Address(
          'Esmeralda', 120, 'casa', 'Dom Pedro II', 'São Paulo', '12232883'),
      '12982171717',
      DateTime.now(),
      LegalPerson(
          'COCA-COLA',
          'COCA-COLA COMMERCIAL',
          '73923457000141',
          Address('AMETISTA', 35, '', 'Bosque dos Eucaliptos', 'São Paulo',
              '12458995'),
          'J'));

  final magalu = Company(
      Uuid().v1(),
      'MAGALU',
      'MAGALU COMMERCIAL',
      '31818594000176',
      Address('street', 170, 'complement', 'neighborhood', 'state', 'zipCode'),
      'phoneNumber',
      DateTime.now(),
      NaturalPerson(
          'TAMIRES',
          '42142142111',
          Address(
              'street', 120, 'complement', 'neighborhood', 'state', 'zipCode'),
          'F'));

  print(ambev.partner.commercialName);
  if (magalu.partner.commercialName == null) {
    print(
        'A empresa ${magalu.companyName} tem uma pessoa fisíca como sócio portanto não há nome comercial.');
  }

  Database db = Database();

  db.insertCompany(ambev);
  db.insertCompany(magalu);

  db.getCompanyByPartnerRegistrationNumber('73923457000141');
  db.getCompanyByPartnerRegistrationNumber('16391051000121');
}
