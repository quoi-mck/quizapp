import 'package:flutter/material.dart';
import '../constans.dart';
  class ResultBox extends StatelessWidget {
    const ResultBox({
      Key? key,
      required this.result,
      required this.questionLength,
    }) : super(key: key);
    final int result;
    final int questionLength;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          
children: [
  const Text(
    'Kết Quả',
    style: TextStyle(color: neutral, fontSize: 22.0),
  ),
  // SizedBox
  const SizedBox(height: 20.0),
  // CircleAvatar
  CircleAvatar(
    child: Text(
      '$result/$questionLength',
      style: TextStyle(fontSize: 30.0),
     ),
    radius: 70.0,
    backgroundColor: result == questionLength / 2
    ?Colors.yellow 
    :result < questionLength / 2 
    ? incorrect 
    : correct,
  ),
  const SizedBox(height: 20.0),
  Text(result == questionLength / 2
    ?'Cố Gắng' 
    :result < questionLength / 2 
    ? 'Thử Lại'
    : 'Tuyệt Vời!',
    style: const TextStyle(color: neutral),

    ),

],
        ),
      ),
        
    );
      
    
  }
}