import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stackedtools/ui/common/ui_helpers.dart';

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
          Flexible(
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
          verticalSpaceMedium,
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: SizedBox(
                  width: constraints.biggest.width,
                  child: SelectableText(
                    viewModel.prettyXml,
                  ),
                ),
              );
            }),
          )
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
