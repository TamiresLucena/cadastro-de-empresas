import 'package:cadastro_de_empresas/address.dart';

class Partner {
  String companyName;
  String? commercialName;
  String registrationNumber;
  Address address;
  String typePerson;

  Partner(this.companyName, this.commercialName, this.registrationNumber,
      this.address, this.typePerson);
}
