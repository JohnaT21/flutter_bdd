

import 'package:bdd_test_gherkin/main.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:gherkin/gherkin.dart';

import '../supportings/calculatore_world.dart';


class Given_step extends Given2WithWorld<String,String,World> {
  @override
  RegExp get pattern => RegExp(r'I have {String} and {String}');

  @override
  Future<void> executeStep(String input1, String input2) async {

  }
}

class Given_When_I_press_the_button extends Given {
           @override
           RegExp get pattern => RegExp(r"I press the <button>");

           @override
           Future<void> executeStep() async {
               // If the step is "Given I do a 'windy pop'"
               // in this example, input1 would equal 'windy pop'

               // your code...
             }
         }

class Given_Then_The_expected_result_is__Login_Success extends Then1WithWorld<String,World> {
           @override
           RegExp get pattern => RegExp(r"The expected result is {String}");

           @override
           Future<void> executeStep(String input1) async {
               // If the step is "Given I do a 'windy pop'"
               // in this example, input1 would equal 'windy pop'

               // your code...
             }
         }