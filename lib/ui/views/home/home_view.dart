import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedtools/ui/views/pretty_json/pretty_json_view.dart';
import 'package:stackedtools/ui/views/pretty_xml/pretty_xml_view.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getToolName(viewModel.currentIndex)),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: getViewForIndex(viewModel.currentIndex),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Tools'),
            ),
            ListTile(
              title: Text(viewList[0]),
              onTap: () {
                viewModel.setIndex(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(viewList[1]),
              onTap: () {
                viewModel.setIndex(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

Widget getViewForIndex(int index) {
  switch (index) {
    case 0:
      return const PrettyJsonView();
    case 1:
      return const PrettyXmlView();
    default:
      return const PrettyJsonView();
  }
}

var viewList = ['Pretty JSON', 'Pretty XML'];

String getToolName(int index) {
  switch (index) {
    case 0:
      return viewList[0];
    case 1:
      return viewList[1];
    default:
      return viewList[0];
  }
}
