import 'package:flutter_test/flutter_test.dart';

import 'package:student_task_manager/main.dart';

void main() {
  testWidgets('Student Task Manager loads correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(const TaskManagerApp());

    expect(find.text('Student Task Manager'), findsOneWidget);
    expect(find.text('No tasks available'), findsOneWidget);
    expect(find.text('Add Task'), findsOneWidget);
  });
}