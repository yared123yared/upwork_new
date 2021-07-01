import 'package:flutter/material.dart';

import '../../data/data.dart';

class MultiSelectDialogActions<V> {
  List<V> _onItemCheckedChange(
      List<V> selectedValues, V itemValue, bool checked) {
    if (checked) {
      selectedValues.add(itemValue);
    } else {
      selectedValues.remove(itemValue);
    }
    return selectedValues;
  }

  void _onCancelTap(BuildContext ctx, List<V> initiallySelectedValues) {
    Navigator.pop(ctx, initiallySelectedValues);
  }

  void _onConfirmTap(
      BuildContext ctx, List<V> selectedValues, Function(List<V>) onConfirm) {
    Navigator.pop(ctx, selectedValues);
    if (onConfirm != null) {
      onConfirm(selectedValues);
    }
  }
}

class MultiSelectItem<V> {
  const MultiSelectItem({@required this.value, @required this.label});
  final V value;
  final String label;
}

class MultiSelectListDialog<V> extends StatefulWidget
    with MultiSelectDialogActions<V> {
  final List<MultiSelectItem<V>> items;
  final List<V> initialSelectedItems;
  final String title;
  final void Function(List<V>) onSelectionChanged;
  final void Function(List<V>) onConfirm;
  final bool searchable;
  final String confirmText;
  final String cancelText;

  MultiSelectListDialog({
    @required this.items,
    this.initialSelectedItems,
    @required this.title,
    this.onSelectionChanged,
    this.onConfirm,
    this.searchable,
    this.confirmText,
    this.cancelText,
  });

  @override
  State<StatefulWidget> createState() => _MultiSelectListDialogState<V>(items);
}

class _MultiSelectListDialogState<V> extends State<MultiSelectListDialog<V>> {
  List<V> _selectedValues = [];
  bool _showSearch = false;
  List<MultiSelectItem<V>> _items;

  _MultiSelectListDialogState(this._items);

  void initState() {
    super.initState();
    if (widget.initialSelectedItems != null) {
      _selectedValues.addAll(widget.initialSelectedItems);
    }
  }

  void onSearchTap() {
    if (_showSearch) {
      setState(() {
        _showSearch = false;
        _items = widget.items;
      });
    } else {
      setState(() {
        _showSearch = true;
      });
    }
  }

  void _updateSearchQuery(String val) {
    if (val != null && val.isEmpty) {
      setState(() {
        _items = widget.items;
      });
      return;
    }

    if (val != null && val.isNotEmpty) {
      List<MultiSelectItem<V>> filteredItems = [];
      for (var item in widget.items) {
        if (item.label.toLowerCase().contains(val.toLowerCase())) {
          filteredItems.add(item);
        }
      }
      setState(() {
        _items = filteredItems;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: widget.searchable == false
          ? Text(widget.title)
          : Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _showSearch
                      ? Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                              ),
                              onChanged: (val) {
                                _updateSearchQuery(val);
                              },
                            ),
                          ),
                        )
                      : Text(widget.title),
                  IconButton(
                    icon: _showSearch ? Icon(Icons.close) : Icon(Icons.search),
                    onPressed: () {
                      onSearchTap();
                    },
                  ),
                ],
              ),
            ),
      contentPadding: EdgeInsets.only(top: 12.0),
      content: SingleChildScrollView(
        child: ListTileTheme(
          contentPadding: EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
          child: ListBody(
            children: _items.map(_buildItem).toList(),
          ),
        ),
      ),
      // content: Column(
      //   children: _items.map(_buildItem).toList(),
      // ),
      // scrollable: true,
      actions: <Widget>[
        TextButton(
          child: widget.cancelText != null
              ? Text(widget.cancelText)
              : Text('CANCEL'),
          onPressed: () {
            widget._onCancelTap(context, widget.initialSelectedItems);
          },
        ),
        TextButton(
          child: widget.confirmText != null
              ? Text(widget.confirmText)
              : Text('OK'),
          onPressed: () {
            widget._onConfirmTap(context, _selectedValues, widget.onConfirm);
          },
        )
      ],
    );
  }

  Widget _buildItem(MultiSelectItem<V> item) {
    return CheckboxListTile(
      value: _selectedValues.contains(item.value),
      title: Text(item.label),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) {
        setState(() {
          _selectedValues =
              widget._onItemCheckedChange(_selectedValues, item.value, checked);
        });
      },
    );
  }
}

class MultiSelectChipDialog<V> extends StatefulWidget
    with MultiSelectDialogActions<V> {
  final List<V> initialSelectedItems;
  final List<MultiSelectItem> items;
  final String title;
  final Function(List<V>) onSelectionChanged;
  final Function(List<V>) onConfirm;
  final bool searchable;
  final String confirmText;
  final String cancelText;

  MultiSelectChipDialog({
    @required this.items,
    @required this.title,
    this.initialSelectedItems,
    this.onSelectionChanged,
    this.onConfirm,
    this.searchable,
    this.confirmText,
    this.cancelText,
  });
  @override
  _MultiSelectChipDialogState createState() =>
      _MultiSelectChipDialogState<V>(items);
}

class _MultiSelectChipDialogState<V> extends State<MultiSelectChipDialog<V>> {
  List<V> _selectedValues = [];
  bool _showSearch = false;
  List<MultiSelectItem<V>> _items;

  _MultiSelectChipDialogState(this._items);

  void initState() {
    super.initState();
    if (widget.initialSelectedItems != null) {
      _selectedValues.addAll(widget.initialSelectedItems);
    }
  }

  void onSearchTap() {
    if (_showSearch) {
      setState(() {
        _showSearch = false;
        _items = widget.items;
      });
    } else {
      setState(() {
        _showSearch = true;
      });
    }
  }

  void _updateSearchQuery(String val) {
    if (val != null && val.isEmpty) {
      setState(() {
        _items = widget.items;
      });
      return;
    }

    if (val != null && val.isNotEmpty) {
      List<MultiSelectItem<V>> filteredItems = [];
      for (var item in widget.items) {
        if (item.label.toLowerCase().contains(val.toLowerCase())) {
          filteredItems.add(item);
        }
      }
      setState(() {
        _items = filteredItems;
      });
    }
  }

  Widget _buildItem(MultiSelectItem<V> item) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: ChoiceChip(
        label: Text(item.label),
        selected: _selectedValues.contains(item.value),
        onSelected: (checked) {
          setState(() {
            _selectedValues = widget._onItemCheckedChange(
                _selectedValues, item.value, checked);
          });
          if (widget.onSelectionChanged != null) {
            widget.onSelectionChanged(_selectedValues);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: widget.searchable == false
          ? Text(widget.title)
          : Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _showSearch
                      ? Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search",
                              ),
                              onChanged: (val) {
                                _updateSearchQuery(val);
                              },
                            ),
                          ),
                        )
                      : Text(widget.title),
                  IconButton(
                    icon: _showSearch ? Icon(Icons.close) : Icon(Icons.search),
                    onPressed: () {
                      onSearchTap();
                    },
                  ),
                ],
              ),
            ),
      content: Wrap(
        children: _items.map((item) => _buildItem(item)).toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: widget.cancelText != null
              ? Text(widget.cancelText)
              : Text('CANCEL'),
          onPressed: () {
            widget._onCancelTap(context, widget.initialSelectedItems);
          },
        ),
        TextButton(
          child: widget.confirmText != null
              ? Text(widget.confirmText)
              : Text('OK'),
          onPressed: () {
            widget._onConfirmTap(context, _selectedValues, widget.onConfirm);
          },
        )
      ],
    );
  }
}

enum MultiSelectDialogType { LIST, CHIP }

class CustomMultiSelect<V> extends StatefulWidget {
  final MultiSelectDialogType dialogType;
  final BoxDecoration decoration;
  final String buttonText;
  final String title;
  final List<MultiSelectItem<V>> items;
  final void Function(List<V>) onSelectionChanged;
  final void Function(List<V>) onConfirm;
  final MultiSelectChipDisplay chipDisplay;
  final FormFieldState<List<V>> state;
  final double iconSize;
  final List<V> initialValue;
  final bool searchable;
  final String confirmText;
  final String cancelText;

  CustomMultiSelect({
    @required this.title,
    @required this.items,
    this.buttonText,
    this.dialogType,
    this.decoration,
    this.onSelectionChanged,
    this.onConfirm,
    this.chipDisplay,
    this.iconSize,
    this.initialValue,
    this.searchable,
    this.confirmText,
    this.cancelText,
    this.state,
  });

  @override
  _CustomMultiSelectState createState() => _CustomMultiSelectState<V>();
}

class _CustomMultiSelectState<V> extends State<CustomMultiSelect<V>> {
  List<V> _selectedItems = [];

  _showDialog(BuildContext ctx) async {
    await showDialog(
      context: context,
      builder: (ctx) {
        if (widget.dialogType == MultiSelectDialogType.CHIP) {
          return MultiSelectChipDialog<V>(
            items: widget.items,
            title: widget.title != null ? widget.title : "Select",
            initialSelectedItems: widget.initialValue ?? _selectedItems,
            searchable: widget.searchable ?? false,
            confirmText: widget.confirmText,
            cancelText: widget.cancelText,
            onConfirm: (selected) {
              if (widget.state != null) {
                widget.state.didChange(selected);
              }
              _selectedItems = selected;
              widget.onConfirm(selected);
            },
          );
        } else {
          return MultiSelectListDialog<V>(
            items: widget.items,
            title: widget.title != null ? widget.title : "Select",
            initialSelectedItems: widget.initialValue ?? _selectedItems,
            searchable: widget.searchable ?? false,
            confirmText: widget.confirmText,
            cancelText: widget.cancelText,
            onConfirm: (selected) {
              if (widget.state != null) {
                widget.state.didChange(selected);
              }
              _selectedItems = selected;
              widget.onConfirm(selected);
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: height, top: height, left: width * 5),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
          color: C.grey,
          width: 0.5,
        )),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              _showDialog(context);
            },
            child: Container(
              decoration: widget.state != null
                  ? widget.decoration ??
                      BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: widget.state != null && widget.state.hasError
                                ? Colors.red
                                : Colors.black,
                            width: 0.5,
                          ),
                        ),
                      )
                  : widget.decoration,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  widget.buttonText == null
                      ? Text(
                          "Select",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: width * 4,
                              color: C.grey),
                        )
                      : Text(
                          widget.buttonText != null ? widget.buttonText : "",
                          style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontSize: width * 4,
                              color: C.grey),
                        ),
                  Icon(
                    Icons.add,
                    color: C.grey,
                  ),
                ],
              ),
            ),
          ),
          widget.chipDisplay != null &&
                  (widget.chipDisplay.items != null &&
                      widget.chipDisplay.items.length > 0)
              ? widget.chipDisplay
              : Container(),
          widget.state != null && widget.state.hasError
              ? const SizedBox(height: 5)
              : Container(),
          widget.state != null && widget.state.hasError
              ? Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.state.errorText,
                        style: TextStyle(
                            fontFamily: 'Merriweather', color: Colors.red),
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}

class MultiSelectChipDisplay<V> extends StatefulWidget {
  final List<MultiSelectItem<V>> items;
  final Function(V) onTap;
  final Color chipColor;
  final Alignment alignment;
  final BoxDecoration decoration;
  final TextStyle textStyle;

  MultiSelectChipDisplay({
    this.items,
    this.onTap,
    this.chipColor,
    this.alignment,
    this.decoration,
    this.textStyle,
  });

  @override
  _MultiSelectChipDisplayState createState() =>
      _MultiSelectChipDisplayState<V>();
}

class _MultiSelectChipDisplayState<V> extends State<MultiSelectChipDisplay<V>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.decoration,
      alignment: widget.alignment ?? Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Wrap(
        children: widget.items != null
            ? widget.items.map((item) => _buildItem(item)).toList()
            : <Widget>[
                const SizedBox.shrink(),
              ],
      ),
    );
  }

  Widget _buildItem(MultiSelectItem<V> item) {
    return Container(
      padding: const EdgeInsets.all(2.0),
      child: ChoiceChip(
        label: Text(
          item.label,
          style: TextStyle(
              fontFamily: 'Merriweather', fontSize: width * 4, color: C.black),
        ),
        selected: widget.items.contains(item),
        selectedColor: Colors.black.withOpacity(0.05),
        onSelected: (_) {
          if (widget.onTap != null) widget.onTap(item.value);
        },
      ),
    );
  }
}

class MultiSelectFormField<V> extends FormField<List<V>> {
  final MultiSelectDialogType dialogType;
  final BoxDecoration decoration;
  final String buttonText;
  final String title;
  final List<MultiSelectItem<V>> items;
  final void Function(List<V>) onSelectionChanged;
  final void Function(List<V>) onConfirm;
  final MultiSelectChipDisplay chipDisplay;
  final FormFieldSetter<List<V>> onSaved;
  final FormFieldValidator<List<V>> validator;
  final List<V> initialValue;
  final bool autovalidate;
  final double iconSize;
  final bool searchable;
  final String confirmText;
  final String cancelText;
  final Key key;

  MultiSelectFormField({
    @required this.title,
    @required this.items,
    this.buttonText,
    this.dialogType,
    this.decoration,
    this.onSelectionChanged,
    this.onConfirm,
    this.chipDisplay,
    this.onSaved,
    this.validator,
    this.initialValue,
    this.autovalidate = false,
    this.iconSize,
    this.searchable,
    this.confirmText,
    this.cancelText,
    this.key,
  }) : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            autovalidate: autovalidate,
            initialValue: initialValue ?? List(),
            builder: (FormFieldState<List<V>> state) {
              return CustomMultiSelect(
                state: state,
                title: title,
                items: items,
                buttonText: buttonText,
                chipDisplay: chipDisplay,
                decoration: decoration,
                dialogType: dialogType,
                onConfirm: onConfirm,
                onSelectionChanged: onSelectionChanged,
                iconSize: iconSize,
                initialValue: initialValue,
                searchable: searchable,
                confirmText: confirmText,
                cancelText: cancelText,
              );
            });
}
