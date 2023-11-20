import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'pretty_xml_viewmodel.dart';
import 'pretty_xml_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'prettyXml'),
])
class PrettyXmlView extends StackedView<PrettyXmlViewModel>
    with $PrettyXmlView {
  const PrettyXmlView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PrettyXmlViewModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              controller: prettyXmlController,
              maxLines: null,
              autofocus: true,
              autocorrect: false,
              cursorColor: Colors.blue,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Paste XML Here',
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  PrettyXmlViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrettyXmlViewModel();

  @override
  void onViewModelReady(PrettyXmlViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
