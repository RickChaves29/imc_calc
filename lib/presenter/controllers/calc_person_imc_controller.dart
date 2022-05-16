import 'package:flutter/cupertino.dart';
import 'package:imc_calc/domain/useCases/calc_person_imc_usecase.dart';

class CalcPersonImcController {
  final CalcPersonImcUseCase _calcPersonImcUseCase;
  CalcPersonImcController(this._calcPersonImcUseCase);
  ValueNotifier height = ValueNotifier<String>("");
  ValueNotifier weight = ValueNotifier<String>("");
  ValueNotifier imcCalc = ValueNotifier<String>("00.0");

  handle() {
    String imc = _calcPersonImcUseCase(
        height: double.parse(height.value), weight: double.parse(weight.value));
    imcCalc.value = imc;
  }
}
