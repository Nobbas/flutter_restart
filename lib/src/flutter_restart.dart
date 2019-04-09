import 'package:flutter/widgets.dart';

class RestartWidget extends StatefulWidget {
  final Widget child;

  const RestartWidget({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _RestartWidgetState createState() => _RestartWidgetState();

  static _RestartWidgetState of(BuildContext context) {
    assert(context != null);

    return (context
        .ancestorInheritedElementForWidgetOfExactType(
        _RestartInheritedWidget)
        .widget as _RestartInheritedWidget)
        .state;
  }
}

class _RestartWidgetState extends State<RestartWidget> {
  Key _key = UniqueKey();

  /// Change the key to a new one which will make the widget tree
  /// re render.
  void restartApp() async {
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _RestartInheritedWidget(
      key: _key,
      state: this,
      child: widget.child,
    );
  }
}

class _RestartInheritedWidget extends InheritedWidget {
  final _RestartWidgetState state;

  _RestartInheritedWidget({
    Key key,
    this.state,
    Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
