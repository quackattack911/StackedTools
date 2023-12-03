import 'package:stackedtools/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stackedtools/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stackedtools/ui/views/home/home_view.dart';
import 'package:stackedtools/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedtools/ui/views/pretty_json/pretty_json_view.dart';
import 'package:stackedtools/ui/views/pretty_xml/pretty_xml_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: PrettyJsonView),
    MaterialRoute(page: PrettyXmlView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}