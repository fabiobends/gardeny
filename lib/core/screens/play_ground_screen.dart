import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../translations/locales.dart';
import '../widgets/button.dart';

class PlayGroundScreen extends StatefulWidget {
  const PlayGroundScreen({super.key});

  @override
  State<PlayGroundScreen> createState() => _PlayGroundScreenState();
}

class _PlayGroundScreenState extends State<PlayGroundScreen> {
  String text = Tr.thisIsAWidget;

  void _onTapChange() {
    setState(() {
      if (text == Tr.thisIsAWidget) {
        text = Tr.thisIsADifferentText;
        return;
      }
      text = Tr.thisIsAWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Tr.playGround),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              Button(
                onPressed: () {},
                label: Tr.playGround,
              ),
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
