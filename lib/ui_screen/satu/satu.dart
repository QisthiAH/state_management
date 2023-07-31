import 'package:flutter/material.dart';
import 'package:flutter7/ui_screen/dua/dua.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Satu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const PageDua();
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
