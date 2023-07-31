import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter7/ui_screen/tiga/tiga.dart';

class PageDua extends StatefulWidget {
  const PageDua({super.key});

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Random().nextInt(100).toString(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Random().nextInt(100).toString(),
              textScaleFactor: 2,
            ),
            Text(
              x.toString(),
              textScaleFactor: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x + 1;
                      debugPrint(x.toString());
                    });
                  },
                  child: const Text(
                    "tambah",
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      x = x - 1;
                      debugPrint(x.toString());
                    });
                  },
                  child: const Text(
                    "kurang",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
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
