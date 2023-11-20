import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stackedtools/ui/common/ui_helpers.dart';

import 'pretty_json_viewmodel.dart';
import 'pretty_json_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'prettyJson'),
])
class PrettyJsonView extends StackedView<PrettyJsonViewModel>
    with $PrettyJsonView {
  const PrettyJsonView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PrettyJsonViewModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: TextField(
              controller: prettyJsonController,
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
          SelectableText(viewModel.prettyJson),
        ],
      ),
    );
  }

  @override
  PrettyJsonViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrettyJsonViewModel();

  @override
  void onViewModelReady(PrettyJsonViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
