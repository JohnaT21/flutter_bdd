

import 'package:gherkin/gherkin.dart';

import '../supportings/calculatore_world.dart';

StepDefinitionGeneric whenTheLoginFound(){
  return given2<String,String,HomePageWorld>(
      'I fill the {emailField} field and {passField}', (input1, input2,context) async{
        context.world.calculator.storeCharacterInput(input1);
        context.world.calculator.storeCharacterInput(input2);
  });
}