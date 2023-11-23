// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String JsonToCsvValueKey = 'jsonToCsv';

final Map<String, TextEditingController> _JsonToCsvViewTextEditingControllers =
    {};

final Map<String, FocusNode> _JsonToCsvViewFocusNodes = {};

final Map<String, String? Function(String?)?> _JsonToCsvViewTextValidations = {
  JsonToCsvValueKey: null,
};

mixin $JsonToCsvView {
  TextEditingController get jsonToCsvController =>
      _getFormTextEditingController(JsonToCsvValueKey);

  FocusNode get jsonToCsvFocusNode => _getFormFocusNode(JsonToCsvValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_JsonToCsvViewTextEditingControllers.containsKey(key)) {
      return _JsonToCsvViewTextEditingControllers[key]!;
    }

    _JsonToCsvViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _JsonToCsvViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_JsonToCsvViewFocusNodes.containsKey(key)) {
      return _JsonToCsvViewFocusNodes[key]!;
    }
    _JsonToCsvViewFocusNodes[key] = FocusNode();
    return _JsonToCsvViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    jsonToCsvController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    jsonToCsvController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          JsonToCsvValueKey: jsonToCsvController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _JsonToCsvViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _JsonToCsvViewFocusNodes.values) {
      focusNode.dispose();
    }

    _JsonToCsvViewTextEditingControllers.clear();
    _JsonToCsvViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get jsonToCsvValue => this.formValueMap[JsonToCsvValueKey] as String?;

  set jsonToCsvValue(String? value) {
    this.setData(
      this.formValueMap..addAll({JsonToCsvValueKey: value}),
    );

    if (_JsonToCsvViewTextEditingControllers.containsKey(JsonToCsvValueKey)) {
      _JsonToCsvViewTextEditingControllers[JsonToCsvValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasJsonToCsv =>
      this.formValueMap.containsKey(JsonToCsvValueKey) &&
      (jsonToCsvValue?.isNotEmpty ?? false);

  bool get hasJsonToCsvValidationMessage =>
      this.fieldsValidationMessages[JsonToCsvValueKey]?.isNotEmpty ?? false;

  String? get jsonToCsvValidationMessage =>
      this.fieldsValidationMessages[JsonToCsvValueKey];
}

extension Methods on FormStateHelper {
  setJsonToCsvValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[JsonToCsvValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    jsonToCsvValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      JsonToCsvValueKey: getValidationMessage(JsonToCsvValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _JsonToCsvViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _JsonToCsvViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      JsonToCsvValueKey: getValidationMessage(JsonToCsvValueKey),
    });
