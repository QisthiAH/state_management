import 'package:flutter/material.dart';
import 'package:flutter7/ui_screen/satu/satu.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const PageSatu();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "satu",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
