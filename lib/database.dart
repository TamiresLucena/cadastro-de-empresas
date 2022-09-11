import 'dart:io';

import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/company.dart';
import 'package:cadastro_de_empresas/legal_person.dart';
import 'package:cadastro_de_empresas/natural_person.dart';
import 'package:cadastro_de_empresas/person.dart';
import 'package:uuid/uuid.dart';

class Database {
  List<Company> companies = [];

  void insertCompany(Company company) {
    companies.add(company);
  }

  void createCompany() {
    print('Enter the name of the company to be add:');

    final uuid = Uuid().v1();

    String companyName = stdin.readLineSync()!;
    String tradeName = stdin.readLineSync()!;
    String registrationNumber = stdin.readLineSync()!;
    String phone = stdin.readLineSync()!;

    String street = stdin.readLineSync()!;
    int number = int.parse(stdin.readLineSync()!);
    String complement = stdin.readLineSync()!;
    String district = stdin.readLineSync()!;
    String state = stdin.readLineSync()!;
    String zipCode = stdin.readLineSync()!;

    Address addressCompany =
        Address(street, number, complement, district, state, zipCode);

    final registrationTime = DateTime.now();

    //Partner:
    String partnerName = stdin.readLineSync()!;
    String partnerTradeName = stdin.readLineSync()!;
    String partnerRegistrationNumber = stdin.readLineSync()!;

    String partnerStreet = stdin.readLineSync()!;
    int partnerNumber = int.parse(stdin.readLineSync()!);
    String partnerComplement = stdin.readLineSync()!;
    String partnerDistrict = stdin.readLineSync()!;
    String partnerState = stdin.readLineSync()!;
    String partnerZipCode = stdin.readLineSync()!;
    String partnerType = stdin.readLineSync()!;

    Address addressPartner = Address(partnerStreet, partnerNumber,
        partnerComplement, partnerDistrict, partnerState, partnerZipCode);

    Person partner;

    if (partnerType == 'F') {
      partner = NaturalPerson(
          partnerName, partnerRegistrationNumber, addressPartner, partnerType);
    } else {
      partner = LegalPerson(partnerName, partnerTradeName,
          partnerRegistrationNumber, addressPartner, partnerType);
    }

    Company company = Company(uuid, companyName, tradeName, registrationNumber,
        addressCompany, phone, registrationTime, partner);

    companies.add(company);
  }

  void getCompanyByRegistrationNumber(String registratioNumber) {
    for (var i = 0; i < companies.length; i++) {
      if (companies[i].registrationNumber == registratioNumber) {
        print(companies[i].companyName);
        return;
      }
    }
    print('Não tem empresa com esse numero!');
  }

  void getCompanyByPartnerRegistrationNumber(String registratioNumber) {
    String company = '';
    for (var i = 0; i < companies.length; i++) {
      if ((companies[i].partner.registrationNumber) == registratioNumber) {
        company = companies[i].companyName;
        print(company);
        break;
      }
    }
    if (company == '') print('Não tem socio na empresa com esse numero!');
  }

  void getCompaniesOrderByCommercialName() {
    companies.sort((a, b) => a.companyName.compareTo(a.companyName));
    print(companies);
  }

  // void removeCompany() {}
}
