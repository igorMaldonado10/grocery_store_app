import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  //Email:
                  CustomTextField(
                    preFixIcon: Icons.email,
                    label: 'Email',
                  ),
              
                  //Senha:
                CustomTextField(
                  isObscure: false,
                  preFixIcon: Icons.lock,
                  label: 'Senha',
                )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}