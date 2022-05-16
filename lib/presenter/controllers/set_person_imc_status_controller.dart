import 'package:flutter/material.dart';
import 'package:imc_calc/domain/useCases/set_person_imc_status_usecase.dart';

class SetPersonImcStatusController {
  ValueNotifier status = ValueNotifier<String>('Preencha os campos acima');
  final SetPersonImcStatusUseCase _setPersonImcStatusUseCase;

  SetPersonImcStatusController(this._setPersonImcStatusUseCase);

  handle(double imc) {
    status.value = _setPersonImcStatusUseCase(imc);
  }
}
