import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart';
class HomePage{
  final List<num> _cachedNumbers = <num>[];
  final List<String> _cachedCharacters = <String>[];
  final List<num> _results = <num>[];

  void storeNumericInput(num input) => _cachedNumbers.add(input);
  void storeCharacterInput(String input) => _cachedCharacters.add(input);


// FlutterDriver? _driver;
  //
  // HomePage(FlutterDriver driver){
  //   _driver =driver;
  // }
  // Future<String> getCounterValue() async {
  //   return await _driver!.getText(txtCounter);
  // }
  //
  // Future<void> clickBtnPlus() async {
  //   return await _driver!.tap(btnIncrement);
  // }
  //
  // Future<void> clickSubtractButton() async {
  //   return _driver!.tap(btnSubtract);
  // }
 String getResult(){
   if(_cachedCharacters.isNotEmpty){
     return 'success';
   }else{
     return 'fail';
   }
 }
}