import 'package:flutter/material.dart';

class AppSearchInput extends StatelessWidget {
  final String searchTitle;
  final TextEditingController controller;
  AppSearchInput({Key key, this.searchTitle, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.only(
        left: 12,
        right: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: searchTitle,
            contentPadding: EdgeInsets.symmetric(horizontal: 8),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
