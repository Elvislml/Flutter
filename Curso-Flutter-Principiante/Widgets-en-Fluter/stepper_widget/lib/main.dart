import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyStepperApp(),
  ));
}

class MyStepperApp extends StatefulWidget {

  @override
  _MyStepperApp createState() => new _MyStepperApp();
}

class _MyStepperApp extends State<MyStepperApp>{

  int _currentStep = 0;
  List<Step> myStep = [
    new Step(
      title: new Text("Paso 1"),
      content: new Text("Aprendiendo Flutter"),
    ),
    new Step(
      title: new Text("Paso 2"),
      content: new Text("Desarrollar App"),
    ),
    new Step(
      title: new Text("Paso 3"),
      content: new Text("Publicar App"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Demo Stepper"),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        child: new Stepper(
          //Nos indica cual es el paso actual de stepper
          currentStep: this._currentStep,
          steps: myStep,
          onStepCancel: (){
            setState(() {
              if(_currentStep > 0){
                _currentStep = _currentStep - 1;
              }else{
                _currentStep = 0;
              }
            });
          },
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
              print("Mi paso actual es " + _currentStep.toString());
            });
          },
          onStepContinue:() {
            setState(() {
              if(_currentStep < myStep.length -1 ){
                _currentStep = _currentStep + 1;
              }else{
                _currentStep = 0;
              }
              print("Mi paso actual es " + _currentStep.toString());
            });
          },
        ),
      ),
    );
  }
}





















