import 'package:flutter/material.dart';

class Stepper_practice extends StatefulWidget {
  const Stepper_practice({Key? key}) : super(key: key);

  @override
  State<Stepper_practice> createState() => _MyHomeState();
}

class _MyHomeState extends State<Stepper_practice> {
  int _currentStep = 0;
  //현재 스텝을 알려주는 _currentStep 초기화

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Practice"),
      ),
      body: Stepper(
        //Stepper 사용
        steps: const [
          //step들을 나열할 수 있게하는 steps 옵션

          Step(
            title: Text("Step's Name1"),
            content: Text('Step' 's information'),
          ),
          //안에 이렇게 Step들을 여러개 넣을 수 있음
          //step은 title(step이름),content(step의 정보) 두가지 정보를 넣음

          Step(
            title: Text("Step's Name2"),
            content: Text('Step' 's information'),
          ),
          Step(
            title: Text("Step's Name3"),
            content: Text('Step' 's information'),
          ),
        ],
        onStepTapped: (int index) {
          //Step을 누르면 나타나는 효과 넣는 부분
          //()안에는 index를 넣음으로서 누를 때마다 index가 1씩 늘어난다.
          setState(() {
            //상태 변화를 감지하고 실행할 문장을 넣음
            _currentStep = index;
            //누를때마다 index가 늘어나고 그것이 _currentStep에 반영
          });
        },
        currentStep: _currentStep,
        //바뀐 _currentStep값(내가 만든 변수)이 currentStep(실제로 step에 반영되는 것)에 반영되게 만든다.

        onStepContinue: () {
          //onStepContinue는 Continue를 눌렀을 때 효과를 설정하는 것이다.
          //아래에서는 다음 단계로 넘어가게 설정하였다.
          if (_currentStep != 2) {
            //현재 Step이 마지막이 아니라면
            setState(
              () {
                _currentStep += 1;
                //눌렀을 때, Step에 1 더하라
              },
            );
          }
        },
        onStepCancel: () {
          //onStepCancel은 Cancel을 눌렀을 때 효과를 설정하는 것이다.
          //아래에서는 전 단계로 넘어가게 설정하였다.
          if (_currentStep != 0) {
            //현재 Step이 마지막이 아니라면
            setState(() {
              _currentStep -= 1;
              //누르면 Step에 1을 빼라
            });
          }
        },
      ),
    );
  }
}
