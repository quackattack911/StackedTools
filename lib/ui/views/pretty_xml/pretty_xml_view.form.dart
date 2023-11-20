// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PrettyXmlValueKey = 'prettyXml';

final Map<String, TextEditingController> _PrettyXmlViewTextEditingControllers =
    {};

final Map<String, FocusNode> _PrettyXmlViewFocusNodes = {};

final Map<String, String? Function(String?)?> _PrettyXmlViewTextValidations = {
  PrettyXmlValueKey: null,
};

mixin $PrettyXmlView {
  TextEditingController get prettyXmlController =>
      _getFormTextEditingController(PrettyXmlValueKey);

  FocusNode get prettyXmlFocusNode => _getFormFocusNode(PrettyXmlValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PrettyXmlViewTextEditingControllers.containsKey(key)) {
      return _PrettyXmlViewTextEditingControllers[key]!;
    }

    _PrettyXmlViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PrettyXmlViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PrettyXmlViewFocusNodes.containsKey(key)) {
      return _PrettyXmlViewFocusNodes[key]!;
    }
    _PrettyXmlViewFocusNodes[key] = FocusNode();
    return _PrettyXmlViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    prettyXmlController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    prettyXmlController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PrettyXmlValueKey: prettyXmlController.text,
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

    for (var controller in _PrettyXmlViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PrettyXmlViewFocusNodes.values) {
      focusNode.dispose();
    }

    _PrettyXmlViewTextEditingControllers.clear();
    _PrettyXmlViewFocusNodes.clear();
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

  String? get prettyXmlValue => this.formValueMap[PrettyXmlValueKey] as String?;

  set prettyXmlValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PrettyXmlValueKey: value}),
    );

    if (_PrettyXmlViewTextEditingControllers.containsKey(PrettyXmlValueKey)) {
      _PrettyXmlViewTextEditingControllers[PrettyXmlValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPrettyXml =>
      this.formValueMap.containsKey(PrettyXmlValueKey) &&
      (prettyXmlValue?.isNotEmpty ?? false);

  bool get hasPrettyXmlValidationMessage =>
      this.fieldsValidationMessages[PrettyXmlValueKey]?.isNotEmpty ?? false;

  String? get prettyXmlValidationMessage =>
      this.fieldsValidationMessages[PrettyXmlValueKey];
}

extension Methods on FormStateHelper {
  setPrettyXmlValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PrettyXmlValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    prettyXmlValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PrettyXmlValueKey: getValidationMessage(PrettyXmlValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PrettyXmlViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PrettyXmlViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PrettyXmlValueKey: getValidationMessage(PrettyXmlValueKey),
    });
