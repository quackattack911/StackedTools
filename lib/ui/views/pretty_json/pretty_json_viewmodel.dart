import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:stackedtools/ui/views/pretty_json/pretty_json_view.form.dart';

class PrettyJsonViewModel extends FormViewModel {
  JsonDecoder decoder = const JsonDecoder();
  JsonEncoder encoder = const JsonEncoder.withIndent('    ');

  String makeJsonPretty(String? json) {
    try {
      var jsonObject = decoder.convert(json!);
      return encoder.convert(jsonObject);
    } catch (e) {
      return 'Invalid JSON';
    }
  }

  String get prettyJson => makeJsonPretty(prettyJsonValue);
}
