import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;
  final String _text;

  TextSection(this._text, this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text(_text),
    );

  }
}


class ExtendedTextSection extends StatelessWidget {

  final Color color;
  final String _title;
  final String _text;

  static const double _hPad = 16.0;

  ExtendedTextSection(this._title, this._text, {this.color = Colors.cyan});

  @override
  Widget build(BuildContext context) {

    final Container titleContainer = Container(
      padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
      child: Text(_title, style: Theme.of(context).textTheme.title),
    );

    final Container bodyContainer = Container(
      padding: const EdgeInsets.fromLTRB(_hPad, 10.0, _hPad, _hPad),
      child: Text(_text, style: Theme.of(context).textTheme.body1),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[
        titleContainer,
        bodyContainer
      ],

    );

  }
}