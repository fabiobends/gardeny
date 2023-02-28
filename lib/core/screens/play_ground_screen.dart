import 'package:flutter/material.dart';

class PlayGroundScreen extends StatefulWidget {
  const PlayGroundScreen({super.key});

  @override
  State<PlayGroundScreen> createState() => _PlayGroundScreenState();
}

class _PlayGroundScreenState extends State<PlayGroundScreen> {
  String text = 'This is a widget';

  void _onTapChange() {
    setState(() {
      if (text == 'This is a widget') {
        text = 'This is a different text';
        return;
      }
      text = 'This is a widget';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayGround'),
      ),
      body: Center(
        child: Text(text),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapChange,
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
