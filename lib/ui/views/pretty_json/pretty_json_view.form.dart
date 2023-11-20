// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PrettyJsonValueKey = 'prettyJson';

final Map<String, TextEditingController> _PrettyJsonViewTextEditingControllers =
    {};

final Map<String, FocusNode> _PrettyJsonViewFocusNodes = {};

final Map<String, String? Function(String?)?> _PrettyJsonViewTextValidations = {
  PrettyJsonValueKey: null,
};

mixin $PrettyJsonView {
  TextEditingController get prettyJsonController =>
      _getFormTextEditingController(PrettyJsonValueKey);

  FocusNode get prettyJsonFocusNode => _getFormFocusNode(PrettyJsonValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PrettyJsonViewTextEditingControllers.containsKey(key)) {
      return _PrettyJsonViewTextEditingControllers[key]!;
    }

    _PrettyJsonViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PrettyJsonViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PrettyJsonViewFocusNodes.containsKey(key)) {
      return _PrettyJsonViewFocusNodes[key]!;
    }
    _PrettyJsonViewFocusNodes[key] = FocusNode();
    return _PrettyJsonViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    prettyJsonController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    prettyJsonController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PrettyJsonValueKey: prettyJsonController.text,
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

    for (var controller in _PrettyJsonViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PrettyJsonViewFocusNodes.values) {
      focusNode.dispose();
    }

    _PrettyJsonViewTextEditingControllers.clear();
    _PrettyJsonViewFocusNodes.clear();
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

  String? get prettyJsonValue =>
      this.formValueMap[PrettyJsonValueKey] as String?;

  set prettyJsonValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PrettyJsonValueKey: value}),
    );

    if (_PrettyJsonViewTextEditingControllers.containsKey(PrettyJsonValueKey)) {
      _PrettyJsonViewTextEditingControllers[PrettyJsonValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPrettyJson =>
      this.formValueMap.containsKey(PrettyJsonValueKey) &&
      (prettyJsonValue?.isNotEmpty ?? false);

  bool get hasPrettyJsonValidationMessage =>
      this.fieldsValidationMessages[PrettyJsonValueKey]?.isNotEmpty ?? false;

  String? get prettyJsonValidationMessage =>
      this.fieldsValidationMessages[PrettyJsonValueKey];
}

extension Methods on FormStateHelper {
  setPrettyJsonValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PrettyJsonValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    prettyJsonValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PrettyJsonValueKey: getValidationMessage(PrettyJsonValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PrettyJsonViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PrettyJsonViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PrettyJsonValueKey: getValidationMessage(PrettyJsonValueKey),
    });
