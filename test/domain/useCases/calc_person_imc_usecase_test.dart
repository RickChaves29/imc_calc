import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calc/domain/useCases/calc_person_imc_usecase.dart';

main() {
  test('deve calcular o imc corretamente', () {
    CalcPersonImcUseCase useCase = CalcPersonImcUseCase();
    String result = useCase(height: 1.70, weight: 70);

    expect(result, isA<String>());
    expect(result, '24.2');
  });
}
