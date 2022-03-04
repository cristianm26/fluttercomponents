import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? icon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;
  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty, required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3
            ? 'Este campo debe tener al menos 3 caracteres'
            : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        /*  border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ), */
      ),
    );
  }
}
