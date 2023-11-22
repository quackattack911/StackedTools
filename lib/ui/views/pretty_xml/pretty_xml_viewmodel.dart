import 'package:stacked/stacked.dart';
import 'package:stackedtools/ui/views/pretty_xml/pretty_xml_view.form.dart';
import 'package:xml/xml.dart';

class PrettyXmlViewModel extends FormViewModel {
  String makeXmlPretty(String? xml) {
    try {
      var xmlDocument = XmlDocument.parse(xml!);
      return xmlDocument.toXmlString(pretty: true, indent: '    ');
    } catch (e) {
      return 'Invalid XML';
    }
  }

  String get prettyXml => makeXmlPretty(prettyXmlValue);
}
