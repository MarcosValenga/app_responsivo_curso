import 'package:app_responsivo_curso/breakpoints.dart';
import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakPoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 16, 16),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                buildHorizontalAdvantage(
                  '+45.000 alunos',
                  'Didática garantida',
                ),
                buildHorizontalAdvantage(
                  '+45.000 alunos',
                  'Didática garantida',
                ),
                buildHorizontalAdvantage(
                  '+45.000 alunos',
                  'Didática garantida',
                ),
              ],
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 16, 16),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildVerticalAdvantage(
                    '+45.000 alunos',
                    'Didática garantida',
                  ),
                ),
                Expanded(
                  child: buildVerticalAdvantage(
                    '+45.000 alunos',
                    'Didática garantida',
                  ),
                ),
                Expanded(
                  child: buildVerticalAdvantage(
                    '+45.000 alunos',
                    'Didática garantida',
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
