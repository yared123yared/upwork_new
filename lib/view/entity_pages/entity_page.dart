import 'package:complex/view/entity_pages/dynamicentitystate.dart';
import 'package:complex/view/entity_pages/entity_page_items.dart';
import 'package:flutter/material.dart';

class EntityPage extends StatefulWidget {
  EntityPage();

  _EntityPage createState() => _EntityPage();
}

class _EntityPage extends State<EntityPage> {
  int currentSegment = 0;

  // PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entity"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: EntityPageItems(
          entityRoleState: UiEntityPageStateList.getroleToFeatureMap(),
        ),
      ),
    );
  }
}
