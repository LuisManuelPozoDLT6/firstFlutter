import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:first_project_learningb/modules/forms/adapters/screens/first_form.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: const FirstForm()
    );
  }
}