
import 'package:flutter/material.dart';

class AppLifeCycleReactor extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _AppLifecycleReactorState();
  }
}

class _AppLifecycleReactorState extends State<AppLifeCycleReactor> with WidgetsBindingObserver{
  AppLifecycleState _notification;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Text('Last notification: $_notification');
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    setState(() {
      print("App lifecycle changed : $state");
      _notification = state;
    });
  }

}

