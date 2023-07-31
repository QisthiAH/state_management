import 'package:flutter/material.dart';
import 'package:flutter7/ui_screen/tiga/tiga.dart';

class PageDua extends StatelessWidget {
  const PageDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Dua'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const PageTiga();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "add",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "back",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
