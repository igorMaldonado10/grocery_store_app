import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  CustomTextField({super.key, this.label = 'Email', this.preFixIcon, this.isObscure = true, this.suFixIcon});

  bool? isObscure;
  final String? label;
  final IconData? preFixIcon;
  final IconData? suFixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool variateObscureText() {
    if (widget.isObscure == true) {
      widget.isObscure = false;
      return widget.isObscure!;
    } else {
      widget.isObscure = true;
      return widget.isObscure!;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: widget.isObscure!,
        decoration: InputDecoration(
            suffixIcon: widget.isObscure == false ? IconButton(
                onPressed: () {
                  setState(() {
                  variateObscureText();
                  });
                },
                icon: const Icon(Icons.visibility))
                : null,
            prefixIcon: Icon(
              widget.preFixIcon,
            ),
            labelText: widget.label,
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
