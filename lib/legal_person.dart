import 'package:cadastro_de_empresas/person.dart';

class LegalPerson extends Person {
  String commercialName;

  LegalPerson(super.name, this.commercialName, super.registrationNumber,
      super.address, super.type);
}
