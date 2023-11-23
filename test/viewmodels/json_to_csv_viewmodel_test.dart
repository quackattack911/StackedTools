import 'package:flutter_test/flutter_test.dart';
import 'package:stackedtools/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('JsonToCsvViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
