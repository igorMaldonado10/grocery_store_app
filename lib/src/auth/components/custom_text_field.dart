import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.label = 'Email',
      this.preFixIcon,
      this.isSecret = false,
      this.suFixIcon});

  final String? label;
  final bool isSecret;
  final IconData? preFixIcon;
  final IconData? suFixIcon;

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
