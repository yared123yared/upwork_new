import 'package:flutter/material.dart';

import '../../data/data.dart';

class CustomSwitchWithTitle extends StatefulWidget {
  final String title;
  final bool isEnabled;
  final bool enabled;
  final ValueChanged<bool> onChange;
  final EdgeInsetsGeometry margin;

  const CustomSwitchWithTitle({
    Key key,
    @required this.title,
    this.enabled = true,
    this.isEnabled = false,
    this.onChange,
    this.margin,
  })  : assert(enabled != null),
        assert(isEnabled != null),
        super(key: key);

  @override
  _CustomSwitchWithTitleState createState() => _CustomSwitchWithTitleState();
}

class _CustomSwitchWithTitleState extends State<CustomSwitchWithTitle> {
  bool _enabled = false;

  @override
  void initState() {
    super.initState();
    _enabled = widget.isEnabled;
  }

  _onChange(bool x) {
    if (mounted)
      setState(() {
        _enabled = x;
      });
    widget.onChange?.call(_enabled);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.margin ??
          EdgeInsets.only(
            left: 24,
            right: 12,
            top: 20,
          ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'Merriweather',
                color: C.grey,
                fontSize: 18,
              ),
            ),
          ),
          Switch(
            value: _enabled,
            onChanged: widget.enabled ? _onChange : (d) {},
            // onChanged: widget.enabled != null
            //     ? widget.enabled
            //         ? _onChange
            //         : null
            //     : _onChange,
          ),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CustomSwitchWithTitle oldWidget) {
    _enabled = widget.isEnabled;
    super.didUpdateWidget(oldWidget);
  }
}
