import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
final String label;
final IconData icon;
final TextEditingController controller;


  const MyTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, //dynamic value
      decoration: InputDecoration(
      labelText: label, //dynamic value
      border: OutlineInputBorder(),
      prefixIcon: Icon(icon), //dynamic value
      prefixIconColor: Theme.of(context).colorScheme.primary
      ),
    );
  }
}