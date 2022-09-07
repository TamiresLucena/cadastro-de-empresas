import 'package:cadastro_de_empresas/address.dart';
import 'package:cadastro_de_empresas/partner.dart';

class Company {
  String uuid;
  String companyName;
  String commercialName;
  String registrationNumber;
  Address address;
  String phoneNumber;
  DateTime createdAt;
  Partner partner;

  Company(
      this.uuid,
      this.companyName,
      this.commercialName,
      this.registrationNumber,
      this.address,
      this.phoneNumber,
      this.createdAt,
      this.partner);
}
