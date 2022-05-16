import 'package:imc_calc/domain/entities/person_entity.dart';

class CalcPersonImcUseCase {
  String call({required double weight, required double height}) {
    PersonEntity person = PersonEntity();
    person.imc = weight / (height * height);
    String imc = person.imc.toStringAsFixed(1);

    return imc;
  }
}
