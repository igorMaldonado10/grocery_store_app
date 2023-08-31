import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/auth/sign_up_screen.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: DSConstColor.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Nome do app
                    Text.rich(TextSpan(
                        style: const TextStyle(
                          fontSize: 40,
                        ),
                        children: [
                          TextSpan(
                            text: 'Green',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onError,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                              text: 'grocer',
                              style: TextStyle(
                                color: DSConstColor.customContrastColor,
                              ))
                        ])),

                    // Categorias
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(fontSize: 25),
                        child: AnimatedTextKit(
                            repeatForever: true,
                            pause: Duration.zero,
                            animatedTexts: [
                              FadeAnimatedText('Frutas'),
                              FadeAnimatedText('Verduras'),
                              FadeAnimatedText('Legumes'),
                              FadeAnimatedText('Carnes'),
                              FadeAnimatedText('Cereais'),
                              FadeAnimatedText('Laticínios'),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              // Formulário
              Container(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Email:
                    const CustomTextField(
                      preFixIcon: Icons.email,
                      label: 'Email',
                    ),

                    //Senha:
                    const CustomTextField(
                      isSecret: true,
                      preFixIcon: Icons.lock,
                      label: 'Senha',
                      textInputAction: TextInputAction.done,
                    ),

                    //Botão de entrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    // Esqueceu a senha
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: DSConstColor.customContrastColor,
                          ),
                        ),
                      ),
                    ),

                    // Divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              'Ou',
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Botão de novo usuário
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              }),
                            );
                          },
                          child: const Text(
                            'Criar conta',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
