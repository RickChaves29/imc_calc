import 'package:flutter/material.dart';

class FormButtonComponent extends StatelessWidget {
  final String? textInput;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  const FormButtonComponent(
      {Key? key, this.textInput, this.onChanged, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(labelText: textInput),
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }
}
