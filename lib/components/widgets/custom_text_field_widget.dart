import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTExtFieldWidget extends StatelessWidget {
  const CustomTExtFieldWidget(
      {Key? key,
      required this.onChanged,
      required this.label,
      this.obscureText = false})
      : super(key: key);

  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(label),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
