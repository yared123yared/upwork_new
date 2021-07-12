import 'package:autotrie/autotrie.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../models.dart';
import '../presentation.dart';

class CommonListPage extends StatefulWidget {
  final dynamic dynamicListState;
  final List<ListStateClass> listItems;
  final VoidCallback addItemAction;
  final VoidCallback updateAction;
  final String appBarTitle;
  final String inAppTitle;
  final bool canSearch;
  final bool hasError;
  final dynamic errorMessage;

  CommonListPage({
    this.addItemAction,
    this.inAppTitle,
    this.updateAction,
    this.canSearch = false,
    @required this.appBarTitle,
    @required this.dynamicListState,
    @required this.listItems,
    this.hasError = false,
    this.errorMessage,
  });

  @override
  _CommonListPage createState() => _CommonListPage();
}

class _CommonListPage extends State<CommonListPage> {
  AutoComplete searchEngine;
  List<ListStateClass> _searchResult;

  initiateSearchEngine() {
    _searchResult = widget.listItems;
    searchEngine = AutoComplete(
      engine: SortEngine.configMulti(Duration(milliseconds: 300), 15, 0.5, 0.5),
    );
    widget.listItems.forEach((item) {
      if (item.title != null) searchEngine.enter(item.title);
      if (item.subtitle != null) searchEngine.enter(item.subtitle);
    });
  }

  search({@required String searchText}) {
    // setState(() {
    //   if (searchText != null && searchText.isNotEmpty) {
    //     _searchResult = [];
    //     List<String> _searchResultText = searchEngine.suggest(searchText);
    //     print(_searchResultText);
    //     widget.listItems
    //         .where((item) =>
    //             _searchResultText.contains(item.title) ||
    //             _searchResultText.contains(item.subtitle))
    //         .toList()
    //         .forEach((item) {
    //       checkAndAdd(_searchResult, item);
    //     });
    //   } else {
    //     print('okas');
    //     _searchResult = widget.listItems;
    //   }
    // });
    setState(() {
      if (searchText == null) {
        _searchResult = widget.listItems;
      } else {
        /*
        _searchResult = widget.listItems
            .where((element) =>

                element.title.contains(searchText) ||
                element.subtitle.contains(searchText))
            .toList();

         */

        _searchResult = doseachInList(searchText);
      }
    });
  }

  List<ListStateClass> doseachInList(String searchtext) {
    List<ListStateClass> mk = [];
    String msearchtext = searchtext.toLowerCase();
    for (var k in widget.listItems) {
      if (k.textforsearch != null) {
        if (k.textforsearch.contains(msearchtext)) mk.add(k);
      } else if (k.subtitle != null) {
        if (k.title.contains(msearchtext) || k.subtitle.contains(msearchtext))
          mk.add(k);
      } else {
        if (k.title.contains(msearchtext)) mk.add(k);
      }
    }
    return mk;
  }

  void checkAndAdd(List<ListStateClass> list, ListStateClass item) {
    if (!list.map((e) => e.subtitle).toList().contains(item.subtitle)) {
      list.add(item);
      // print('add'+item.title);
    }
    if (!list.map((e) => e.title).toList().contains(item.title)) {
      list.add(item);
      // print('add'+ item.subtitle);
    }
  }

  @override
  void initState() {
    initiateSearchEngine();
    super.initState();
    print(widget.hasError);
    print(widget.errorMessage);
    Future.delayed(Duration.zero).then((_) {
      if (widget.hasError != null && widget.hasError) {
        showDialog(
            context: context,
            builder: (context) => Dialog(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '${widget.errorMessage}',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 6),
      child: SingleChildScrollView(
        child: Column(
          children: [
            widget.canSearch
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: height * 4),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                      onChanged: (text) {
                        print(
                            '$text = on changed ${text != null} and ${text.isNotEmpty}');
                        search(searchText: text);
                      },
                    ),
                  )
                : SizedBox(
                    height: height * 2,
                  ),
            widget.listItems != null
                ? ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List<CommonListTile>.from(
                        _searchResult.map((item) => CommonListTile(
                              listState: item,
                            ))),
                  )
                : Text("List is empty"),
            SizedBox(
              height: height * 4,
            ),
            if (widget.updateAction != null)
              CustomActionButton(
                state: ButtonState.idle,
                title: "Update",
                gradient: C.bgGradient,
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                margin: EdgeInsets.symmetric(
                    horizontal: width * 25, vertical: height * 6),
                onTap: widget.updateAction,
              ),
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CommonListPage oldWidget) {
    //remove old search and update the list when it changed
    search(searchText: '');
    super.didUpdateWidget(oldWidget);
  }
}
