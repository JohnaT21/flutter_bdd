

import 'package:gherkin/gherkin.dart';

import '../supportings/calculatore_world.dart';

StepDefinitionGeneric thenResult(){
  return given1<String,HomePageWorld>(
      'The expected result is {result}',
          (input1, context) async{
        final result = context.world.calculator.getResult();
          });
}