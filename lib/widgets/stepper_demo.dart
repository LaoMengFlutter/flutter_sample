import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StepperDemo();
}

class _StepperDemo extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stepper(
      currentStep: _currentStep,
      onStepTapped: (index){setState((){_currentStep = index;});},
      onStepContinue: (){setState((){_currentStep++;});},
      onStepCancel: (){setState((){});},
      steps: <Step>[
        Step(
          title: Text('title'),
          subtitle: Text('subtitle'),
          content: Text('content'),
        ),
        Step(
          title: Text('title'),
          subtitle: Text('subtitle'),
          content: Text('content'),
        ),
        Step(
          title: Text('title'),
          subtitle: Text('subtitle'),
          content: Divider(color: Colors.blue,),
        ),
      ],
    );
  }
}
