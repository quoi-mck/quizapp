import 'package:flutter/material.dart';
import './screens/home_screen.dart'; // Import  HomeScreen file
void main() {
  runApp(
    const MyApp()
); // Gọi MyApp
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Xóa banner debug
      home: HomeScreen(), // Đặt HomeScreen là trang chủ
    );
  }
}

