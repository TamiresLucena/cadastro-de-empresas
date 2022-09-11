import 'package:cadastro_de_empresas/address.dart';

abstract class Person {
  String name;
  String registrationNumber;
  Address address;
  String type;

  Person(this.name, this.registrationNumber, this.address, this.type);

  Object? get commercialName => null;
}
