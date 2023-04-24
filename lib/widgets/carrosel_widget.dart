import 'package:flutter/material.dart';

class Carrosel extends StatelessWidget {
  const Carrosel({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: 220.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150.0,
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),  
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150.0,
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),  
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150.0,
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150.0,
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150.0,
                height: 220.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            ),               
          ],
        ),
      ),
    );
  }
}