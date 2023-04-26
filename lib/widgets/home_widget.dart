import 'package:flutter/material.dart';

import 'carrosel_widget.dart';


class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0, bottom: 20.0, top: 15.0),
            child: Row(
              children: const [
                Text('Home', style: TextStyle(
                  color: Colors.white,
                  fontSize: 27.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left:15.0,
                bottom: 8.0,
                top: 8.0
              ),
              child: Text('Continuar...',
               style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w300
                ),
              ),
            ),

            Carrosel(),
          ],
        ),
      ],
    );
  }
}