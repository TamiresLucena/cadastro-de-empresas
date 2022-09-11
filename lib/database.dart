import 'package:cadastro_de_empresas/company.dart';

class Database {
  List<Company> companies = [];

void insertCompany(Company company) {
  print('Enter the name of the company to be add:');
  String companyName = stdin.readLineSync()!;
  String tradeName = stdin.readLineSync()!;
  String registrationNumber = stdin.readLineSync()!;
  String phone = stdin.readLineSync()!;
  String street = stdin.readLineSync()!;
  String number = stdin.readLineSync()!;
  String complement = stdin.readLineSync()!;
  String district = stdin.readLineSync()!;
  String state = stdin.readLineSync()!;
  String zipCode = stdin.readLineSync()!;
  String addressCompany = Address(street, number, complement, district, state, zipCode);
  final registrationTime = DateTime.now();
  //Partner:
  String name = stdin.readLineSync()!;
  String tradeName = stdin.readLineSync()!;
  String registrationNumber = stdin.readLineSync()!;
  String street = stdin.readLineSync()!;
  String number = stdin.readLineSync()!;
  String complement = stdin.readLineSync()!;
  String district = stdin.readLineSync()!;
  String state = stdin.readLineSync()!;
  String zipCode = stdin.readLineSync()!;
  String addressPartner = Address(street, number, complement, district, state, zipCode);
  NaturalPerson partner = NaturalPerson(name, registrationNumber, addressPartner)
  LegalPerson partner = LegalPerson(name, tradeName, cpf, addressPartner);
  Company company1 = Company(uuid, companyName, tradeName, registrationNumber, phone, registrationTime, addressPartner, partner)
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
    final alo = companies.sort((a, b) => a.companyName.compareTo(a.companyName));
    print(alo);
  }

  // void removeCompany() {}
}
