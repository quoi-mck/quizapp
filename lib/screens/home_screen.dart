import 'package:flutter/material.dart';
import '../constans.dart';
import '../models/question_model.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';
// Create the HomeScreen widget
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _questions = [
  Question(
    id: '10',
    title: 'Tính tổng 2 + 2?',
    options: {
      '5': false,
      '3': false,
      '4': true,
      '10': false,
    },
  ),
   Question(
    id: '11',
    title: 'Tính tổng: 10 + 20?',
    options: {
      '50': false,
      '30': true,
      '40': false,
      '10': false,
    },
  ),
  
];
  int index = 0;
  int score = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;
  void nextQuestion( ) {
    if(index == _questions.length - 1) { 
      showDialog(context: context, builder: (ctx) => ResultBox(
        result: score,
        questionLength: _questions.length,
      ));

    } else {
      if (isPressed) {

      
    setState((){
      index++;
      isPressed = false;
    });
  } 
  //next đáp án chưa chọn
  else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Hãy chọn đáp án "),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(vertical: 20.0),
    ));
  }

    
  }
  }
  void checkAnswerAndUpdate(bool value) {
    if(isAlreadySelected){
      return;
    }else {
      
      if(value == true){
        score++;
      setState(() {
       isPressed = true;
    
    isAlreadySelected = false;
    });
    

     
    }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Text('Quiz App'),
        backgroundColor: background,
        shadowColor: Colors.transparent,
      actions: [
        Padding(padding: const EdgeInsets.all(18.0), 
        child: Text('Điểm: $score',

        style: const TextStyle(fontSize: 18.0),
        ),
        ),
      ],
      ),
     body: Container(
  width: double.infinity,
  child: Column(
    children: [
      // add the QuestionWidget here
      QuestionWidget(
        indexAction: index, // currently at 0.
        question: _questions[index]
          .title, // means the first question in the list.
        totalQuestions: _questions.length, // total length of the list
      ),
     // Quest.onBidget
    const Divider(color: neutral),
// add some space
const SizedBox(height: 25.0),
  for (int i = 0; i < _questions[index].options.length; i++) 
  
    GestureDetector(
      onTap: () => checkAnswerAndUpdate(_questions[index].options.values.toList()[i]),

      
      child: OptionCard(
          option:  _questions[index].options.keys.toList()[i],
          color: isPressed ? 
          _questions[index].options.values.toList()[i] == true 
          ? correct 
          : incorrect 
          : neutral, 
         
          
      ),
    ),
    ],
  ),
),
     floatingActionButton: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0),
  child: NextButton(nextQuestion: nextQuestion), // the show function
),
// Padding
 floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
