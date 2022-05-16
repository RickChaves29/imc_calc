import 'package:flutter/material.dart';
import 'package:imc_calc/domain/useCases/calc_person_imc_usecase.dart';
import 'package:imc_calc/domain/useCases/set_person_imc_status_usecase.dart';
import 'package:imc_calc/presenter/controllers/calc_person_imc_controller.dart';
import 'package:imc_calc/presenter/controllers/set_person_imc_status_controller.dart';
import 'package:imc_calc/presenter/ui/components/form_button_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CalcPersonImcController _imcCalcController =
      CalcPersonImcController(CalcPersonImcUseCase());
  final SetPersonImcStatusController _statusController =
      SetPersonImcStatusController(SetPersonImcStatusUseCase());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FormButtonComponent(
              textInput: 'Altura (cm)',
              onChanged: (value) {
                _imcCalcController.height.value = value;
              },
            ),
            FormButtonComponent(
              textInput: 'Peso (cm)',
              onChanged: (value) {
                _imcCalcController.weight.value = value;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  _imcCalcController.handle();
                  _statusController
                      .handle(double.parse(_imcCalcController.imcCalc.value));
                },
                child: const Text('Calcular')),
            const SizedBox(
              height: 40,
            ),
            ValueListenableBuilder(
                valueListenable: _statusController.status,
                builder: (_, value, __) {
                  return Text('$value', style: const TextStyle(fontSize: 18));
                }),
            Expanded(
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: _imcCalcController.imcCalc,
                  builder: (_, value, __) {
                    return Text('$value',
                        style: const TextStyle(
                          fontSize: 60,
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
