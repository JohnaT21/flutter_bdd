import 'dart:async';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/login_step.dart';
import 'steps/then_result.dart';
import 'steps/when_charchterfound.dart';
import 'supportings/calculatore_world.dart';

Future<void> main()  {
  final steps = [
    Given_step(),
    Given_When_I_press_the_button(),
    Given_Then_The_expected_result_is__Login_Success()
    // whenTheLoginFound(),
    // thenResult()
  ];
  final config = TestConfiguration(
    features: [RegExp(r'features\\.+\.feature')],
    reporters: [
      StdoutReporter(MessageLevel.error),
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(),
    ],
    // createWorld: (config)=>Future.value(HomePageWorld()),
    stepDefinitions: steps,
    stopAfterTestFailed: true,
  );
  return GherkinRunner().execute(config);
}