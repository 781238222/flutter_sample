import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RadioDemo();
  }
}

class _RadioDemo extends State<RadioDemo> {
  String _newValue = '语文';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Radio<String>(
                value: "语文",
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                }),
            Radio<String>(
                value: "数学",
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                }),
            Radio<String>(
                value: "英语",
                groupValue: _newValue,
                onChanged: (value) {
                  setState(() {
                    _newValue = value;
                  });
                }),
          ],
        ),
        Column(
          children: <Widget>[
            RadioListTile<String>(
              value: '语文',
              title: Text('语文'),
              groupValue: _newValue,
              onChanged: (value) {
                setState(() {
                  _newValue = value;
                });
              },
            ),
            RadioListTile<String>(
              value: '数学',
              title: Text('数学'),
              groupValue: _newValue,
              onChanged: (value) {
                setState(() {
                  _newValue = value;
                });
              },
            ),
            RadioListTile<String>(
              value: '英语',
              title: Text('英语'),
              groupValue: _newValue,
              onChanged: (value) {
                setState(() {
                  _newValue = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
