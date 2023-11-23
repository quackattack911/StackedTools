import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stackedtools/ui/common/ui_helpers.dart';
import 'package:stackedtools/ui/views/json_to_csv/json_to_csv_view.form.dart';

import 'json_to_csv_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'jsonToCsv'),
])
class JsonToCsvView extends StackedView<JsonToCsvViewModel>
    with $JsonToCsvView {
  const JsonToCsvView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    JsonToCsvViewModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: TextField(
              controller: jsonToCsvController,
              maxLines: null,
              autofocus: true,
              autocorrect: false,
              cursorColor: Colors.blue,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Paste JSON Here',
              ),
            ),
          ),
          verticalSpaceLarge,
          // SelectableText(viewModel),
        ],
      ),
    );
  }

  @override
  JsonToCsvViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      JsonToCsvViewModel();
}
