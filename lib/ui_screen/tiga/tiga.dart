import 'dart:math';

import 'package:flutter/material.dart';

class PageTiga extends StatefulWidget {
  const PageTiga({super.key});

  @override
  State<PageTiga> createState() => _PageTigaState();
}

class _PageTigaState extends State<PageTiga> {
  // var x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.loop),
          ),
        ],
        title: Text(Random().nextInt(100).toString()),
      ),
      body: const Center(
        child: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  const MyColumn({
    super.key,
  });

  @override
  State<MyColumn> createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  var x = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
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
            Navigator.pop(context);
          },
          child: const Text(
            "back",
          ),
        ),
        text,
      ],
    );
  }
}

const text = Text('halo');
