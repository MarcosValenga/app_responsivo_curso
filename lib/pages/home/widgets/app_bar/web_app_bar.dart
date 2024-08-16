import 'package:flutter/material.dart';

import 'web_app_bar_responsive_content.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      iconTheme: const IconThemeData(color: Colors.white),
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 32),
          const WebAppBarResponsiveContent(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
          const SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0)),
                side: const BorderSide(width: 2, color: Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                'Fazer Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 8),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
