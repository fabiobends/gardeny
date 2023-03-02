import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              FilledButton(
                onPressed: () {},
                child: const Text('Button Text'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapChange,
        child: const Icon(FontAwesomeIcons.sliders),
      ),
    );
  }
}
