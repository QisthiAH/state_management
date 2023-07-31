import 'package:flutter/material.dart';
import 'package:flutter7/ui_screen/dua/dua.dart';
import 'package:flutter7/ui_screen/home/home.dart';
import 'package:states_rebuilder/scr/state_management/state_management.dart';

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
            OnReactive(
              () => Text(
                counter.state.toString(),
                textScaleFactor: 2,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      counter.state = counter.state + 1;
                      print(counter.state);
                    },
                    child: const Text(
                      "tambah",
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      counter.state = counter.state - 1;
                      print(counter.state);
                    },
                    child: const Text(
                      "kurang",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
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
