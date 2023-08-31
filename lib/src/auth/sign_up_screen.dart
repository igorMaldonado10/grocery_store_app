import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );
  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: DSConstColor.customSwatchColor,
      body: SingleChildScrollView(
        controller: scrollController,
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Cadastro',
                        style: TextStyle(
                            color: DSConstColor.primaryLight, fontSize: 35),
                      ),
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
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomTextField(
                          preFixIcon: Icons.email,
                          label: 'Email',
                        ),
                        const CustomTextField(
                          preFixIcon: Icons.lock,
                          label: 'Senha',
                          isSecret: true,
                        ),
                        const CustomTextField(
                          preFixIcon: Icons.person,
                          label: 'Nome',
                        ),
                        CustomTextField(
                          inputFormatters: [phoneFormatter],
                          preFixIcon: Icons.phone,
                          label: 'Celular',
                        ),
                        CustomTextField(
                          preFixIcon: Icons.file_copy,
                          label: 'CPF',
                          textInputAction: TextInputAction.done,
                          inputFormatters: [cpfFormatter],
                        ),
                        SizedBox(
                          height: 50,
                          // width: size.width / 0.5,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar usuário',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Botão de return
              Positioned(
                top: 10,
                left: 10,
                child: SafeArea(
                  bottom: false,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: DSConstColor.lighter,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
