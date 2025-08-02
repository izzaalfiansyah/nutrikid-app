import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nutrikid_app/components/button.dart';
import 'package:nutrikid_app/services/student_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final studentService = Modular.get<StudentService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Button(
          onPressed: () {},
          full: false,
          child: Text('Klik di sini'),
        ),
      ),
    );
  }
}
