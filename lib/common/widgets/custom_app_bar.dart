import 'package:flutter/material.dart';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import '../../data/data.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;
  final List<Widget> actions;

  final bool hasSearch;
  final String searchLabel;
  final String initialSearchValue;
  final Function(String value) onSearch;
  final Function(String value) onChange;

  CustomAppBar({
    @required this.title,
    this.leading,
    this.actions,
    this.hasSearch = false,
    this.searchLabel = 'Search',
    this.onSearch,
    this.onChange,
    this.initialSearchValue,
  })  : preferredSize = Size.fromHeight(height * 8),
        assert(title != null);

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool searching = false;

  int keyBoardSubscribeId;

  @override
  void initState() {
    super.initState();
    var keyboardVisibilityController = KeyboardVisibilityController();
    // Query
    print(
        'Keyboard visibility direct query: ${keyboardVisibilityController.isVisible}');

    // Subscribe
    keyboardVisibilityController.onChange.listen((bool visible) {
      print('Keyboard visibility update. Is visible: ${visible}');
      if (!visible) {
        setState(() {
          searching = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: searching ? _searchBar() : Text(widget.title),
      leading: widget.leading,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(width * 5),
        ),
      ),
      centerTitle: true,
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     gradient: C.bgGradient,
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(width * 5),
      //     ),
      //   ),
      // ),
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        if (widget.hasSearch && !searching)
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
                searching = true;
              });
            },
          ),
        if (!searching) ...widget.actions ?? [],
      ],
    );
  }

  Widget _searchBar() {
    return TextFormField(
      initialValue: widget.initialSearchValue,
      autofocus: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelStyle: TextStyle(color: Colors.white70),
        labelText: widget.searchLabel,
        suffixIcon: IconButton(
          icon: Icon(Icons.search_off_rounded, color: Colors.white),
          onPressed: () {
            setState(() {
              searching = false;
            });
          },
        ),
      ),
    );
  }
}
