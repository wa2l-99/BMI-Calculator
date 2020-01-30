import 'dart:math';
class Calculatorbrain{
  Calculatorbrain({this.weight,this.height});

  final int weight;
  final int height;

  double _bmi;

  String calculateBMI (){
    _bmi = weight /pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return  'Overweight';
    }else if (_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String bmi(){
    return 'BMI :';
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercixce and go to the gym .';
    }else if (_bmi > 18.5){
      return 'You have a noraml body weight. Excelent !';
    }else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}