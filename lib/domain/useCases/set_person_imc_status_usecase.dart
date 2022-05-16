import 'package:imc_calc/domain/entities/person_entity.dart';

class SetPersonImcStatusUseCase {
  call(double imc) {
    PersonEntity person = PersonEntity();
    if (imc <= 18.5) {
      person.status = 'Abaixo do peso';
    } else if (imc > 18.5 && imc <= 24.9) {
      person.status = 'Normal';
    } else if (imc > 24.9 && imc <= 29.9) {
      person.status = 'Sobrepeso';
    } else if (imc > 29.9 && imc <= 39.9) {
      person.status = 'Obesidade';
    } else if (imc > 39.9) {
      person.status = 'Obesidade Grave';
    }

    return person.status;
  }
}
