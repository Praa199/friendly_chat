import 'package:flutter/material.dart';

void main() {
  runApp(
    FriendlyChatApp(),
  );
}

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key? key,
  }) : super(key: key);

// @override is a Dart annotation that indicates that the tagged method overrides a superclass's method.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      // home argument specifies the default screen that users see in your app
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  // the part of the user interface represented by a widget
  Widget build(BuildContext context) {
    //  Scaffold and AppBar, are specific to Material Design apps
    // widgets, like Text, are generic and can be used in any app
    return Scaffold(appBar: AppBar(title: Text('FriendlyChat')));
  }
}
