import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calc/domain/useCases/set_person_imc_status_usecase.dart';

main() {
  group('Set Person IMC Status', () {
    test('deve retorna o status Abaixo do peso conforme o imc', () {
      SetPersonImcStatusUseCase useCase = SetPersonImcStatusUseCase();
      String result = useCase(18.2);

      expect(result, isA<String>());
      expect(result, 'Abaixo do peso');
    });
    test('deve retorna o status Normal conforme o imc', () {
      SetPersonImcStatusUseCase useCase = SetPersonImcStatusUseCase();
      String result = useCase(24.2);

      expect(result, isA<String>());
      expect(result, 'Normal');
    });
    test('deve retorna o status Sobrepeso conforme o imc', () {
      SetPersonImcStatusUseCase useCase = SetPersonImcStatusUseCase();
      String result = useCase(25.2);

      expect(result, isA<String>());
      expect(result, 'Sobrepeso');
    });
    test('deve retorna o status Obesidade conforme o imc', () {
      SetPersonImcStatusUseCase useCase = SetPersonImcStatusUseCase();
      String result = useCase(35.2);

      expect(result, isA<String>());
      expect(result, 'Obesidade');
    });
    test('deve retorna o status de Obesidade Grave  conforme o imc', () {
      SetPersonImcStatusUseCase useCase = SetPersonImcStatusUseCase();
      String result = useCase(45.2);

      expect(result, isA<String>());
      expect(result, 'Obesidade Grave');
    });
  });
}
