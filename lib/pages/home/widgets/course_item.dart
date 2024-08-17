import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/banner.jpg', fit: BoxFit.fitWidth),
        const SizedBox(height: 4),
        Flexible(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return const AutoSizeText(
                'Criação de Apps Android e iOS com flutter - Crie 16 apps',
                minFontSize: 6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              );
            },
          ),
        ),
        const Text(
          'Aurelion',
          style: TextStyle(color: Colors.grey),
        ),
        const Text(
          'R\$22,90',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
