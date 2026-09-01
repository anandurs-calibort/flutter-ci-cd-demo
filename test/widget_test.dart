// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ci_cd_demo/main.dart';

void main() {
testWidgets('CI/CD demo screen loads correctly', (tester) async {
await tester.pumpWidget(const CiCdDemoApp());

expect(find.text('CI/CD Pipeline Demo'), findsOneWidget);
expect(find.text('Pipeline Stages'), findsOneWidget);
expect(find.text('Code Push'), findsOneWidget);
expect(find.text('Code Analysis'), findsOneWidget);
expect(find.text('Run Tests'), findsOneWidget);
expect(find.text('Build'), findsOneWidget);
expect(find.text('Delivery'), findsOneWidget);
});
}

