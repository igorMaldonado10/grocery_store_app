import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.inputFormatters,
      this.label,
      this.textInputAction = TextInputAction.next,
      this.preFixIcon,
      this.isSecret = false,
      this.suFixIcon});

  final TextInputAction? textInputAction;
  final String? label;
  final bool isSecret;
  final IconData? preFixIcon;
  final IconData? suFixIcon;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        inputFormatters: widget.inputFormatters,
        textInputAction: widget.textInputAction,
        obscureText: isObscure,
        decoration: InputDecoration(
          suffixIcon: widget.isSecret
              ? IconButton(
                  icon: Icon(isObscure == true
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                )
              : null,
          prefixIcon: Icon(
            widget.preFixIcon,
          ),
          labelText: widget.label,
        ),
      ),
    );
  }
}
