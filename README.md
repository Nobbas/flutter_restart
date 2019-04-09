# flutter_restart
Simple widget to restart your flutter application.

### Steps to use
* Add `RestartWidget` at the root of your widget tree.
```dart
import 'package:flutter/material.dart';
import 'package:flutter_restart/flutter_restart.dart';

void main() {
  runApp(
    RestartWidget(
      child: MyApp(),
    ),
  );
}
```

* From anywhere inside your application call `restartApp`.
```dart
RestartWidget.of(context).restartApp();
```

### Internals
`RestartWidget` is an `InheritedWidget` that provides the `restartApp` function, which when called rebuilds the entire widget tree.

### Attribution
Package built from [`Rémi Rousselet`'](https://stackoverflow.com/users/8394265/rémi-rousselet)s answer on [StackOverflow](https://stackoverflow.com/a/50116077/6878730).
