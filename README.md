A simple overlay progress indicator with custom widgets and loaders.

## Features

- Change background color.
- Add custom widgets.

## Usage with custom widget

```dart
import 'package:flutter/material.dart';
import 'package:overlay_progress_indicator/overlay_progress_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            OverlayProgressIndicator.show(
              context: context,
              backgroundColor: Colors.black45,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Loading',
                    ),
                  ],
                ),
              ),
            );

            Future.delayed(const Duration(seconds: 2), () {
              OverlayProgressIndicator.hide();
            });
          },
          child: const Text('Start'),
        ),
      ),
    );
  }
}

```

## Usage default loader

```dart

import 'package:flutter/material.dart';
import 'package:overlay_progress_indicator/overlay_progress_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            OverlayProgressIndicator.show(
              context: context,
              backgroundColor: Colors.black45,
            );

            Future.delayed(const Duration(seconds: 2), () {
              OverlayProgressIndicator.hide();
            });
          },
          child: const Text('Start'),
        ),
      ),
    );
  }
}


```
