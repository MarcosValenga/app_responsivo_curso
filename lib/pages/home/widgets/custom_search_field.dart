import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        hintText: 'Digite alguma coisa aqui',
        hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,))
      ),
    );
  }
}