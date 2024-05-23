import 'package:flutter/material.dart';

import 'app_textfield.dart';

abstract class InputForm {
  List<InputController> get inputControllers;

  bool isFormValid();

  final ValueNotifier<bool> _validated = ValueNotifier<bool>(false);

  ValueNotifier<bool> get validState => _validated;

  InputForm() {
    for (var element in inputControllers) {
      element.controller.addListener(() async {
        _validated.value = isFormValid();
      });
    }
  }
}
