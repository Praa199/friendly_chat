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
  // A BuildContext object is a handle to the location of a widget in your app's widget tree.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FriendlyChat',
      // home argument specifies the default screen that users see in your app
      home: ChatScreen(),
    );
  }
}

// converted from stateless to stateful
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();
  @override
  // the part of the user interface represented by a widget
  Widget build(BuildContext context) {
    //  Scaffold and AppBar, are specific to Material Design apps
    // widgets, like Text, are generic and can be used in any app
    return Scaffold(
      appBar: AppBar(title: Text('FriendlyChat')),
      // _buildTextComposer causes the app to display the text input user control
      body: _buildTextComposer(),
    );
  }

  // returns a widget that encapsulates the text input field
  void _handleSubmitted(String text) {
    _textController.clear();
  }

  Widget _buildTextComposer() {
    // Icons inherit their color, opacity, and size from an IconTheme widget,
    return IconTheme(
      // The IconTheme's data property specifies the ThemeData object for the current theme
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        // Using a Row allows you to place the Send button adjacent to the input field
        child: Row(
          children: [
            //  TextField in a Flexible widget tells the Row to automatically size the text field
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              // IconButton displays the Send button.
              child: IconButton(
                  icon: const Icon(Icons.send),
                  //  onPressed property uses an anonymous function to invoke the _handleSubmitted()
                  onPressed: () => _handleSubmitted(_textController.text)),
            )
          ],
        ),
      ),
    );
  }
}
