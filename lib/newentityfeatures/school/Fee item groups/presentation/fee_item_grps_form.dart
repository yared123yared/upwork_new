import 'package:complex/common/widgets/custom_switchWithTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/data/styles_colors.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;
import 'package:complex/newentityfeatures/Models/fee_item_groups_model.dart';

class FeeItemGroupsModelForm extends StatefulWidget {
  final FeeItemGroupsModel feeItemGroupsModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  FeeItemGroupsModelForm({
    @required this.feeItemGroupsModel,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _FeeItemGroupsModelFormState createState() => _FeeItemGroupsModelFormState();
}

class _FeeItemGroupsModelFormState extends State<FeeItemGroupsModelForm> {
  CustomTextFieldController _scheduleName = CustomTextFieldController();

  CustomTextFieldController _grade = CustomTextFieldController();

  List<FeeItem> _feeItems = [];
  List<String> grades;
  List<String> feeItemName;

  ///each item in in the fee items needs three controllers
  List<CustomTextFieldController> _controllers = [];

  bool edit = false;

  void addItem() {
    setState(() {
      _feeItems.add(FeeItem(
        isDiscountApplicable: true,
        isProrated: true,
      ));
      _controllers.add(CustomTextFieldController());
      _controllers.add(CustomTextFieldController());
      _controllers.add(CustomTextFieldController());
    });
  }

  void removeItem(int index) {
    setState(() {
      _feeItems.removeAt(index * 3);
      _controllers.removeAt(index * 3);
      _controllers.removeAt(index * 3);
      _controllers.removeAt(index * 3);
    });
  }

  bool _validate() {
    if (_feeItems.isEmpty) {
      asuka.showSnackBar(SnackBar(
        content: Text("You must enter the The Items"),
      ));
      return false;
    } else
      return _scheduleName.isValid &&
          _grade.isValid &&
          _controllers.fold(
            true,
            (previousValue, element) => previousValue && element.isValid,
          );
  }

  @override
  void initState() {
    if (widget.feeItemGroupsModel != null) {
      edit = true;
      _feeItems = widget.feeItemGroupsModel.feeItem;
      _controllers = List.generate(
        _feeItems.length * 3,
        (index) => CustomTextFieldController(),
      );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // _grade.text = widget.vrAssignmentModel.grade;
    // print(_grade.text);
    return BlocProvider(
      create: (context) => itembloc.FeeItemGroupsModelBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fee Item Group'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.FeeItemGroupsModelBloc,
            itembloc.FeeItemGroupsModelState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            grades = state.grades;
            feeItemName = state.feeitem;
            // _initFiledValue();
          }
        }, child: BlocBuilder<itembloc.FeeItemGroupsModelBloc,
            itembloc.FeeItemGroupsModelState>(builder: (context, state) {
          if (state is itembloc.IsBusy)
            return Center(
              child: Container(
                  width: 20, height: 20, child: CircularProgressIndicator()),
            );
          if (state is itembloc.HasLogicalFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));
          if (state is itembloc.HasExceptionFaliur)
            return Center(child: Text(state.error));

          if (state is itembloc.IsReadyForDetailsPage) {
            return _blocBuilder(context);
          }

          return Center(child: Text('Empty'));
        })),
      ),
    );
  }

  _blocBuilder(context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: width * 6),
      children: <Widget>[
        CustomTextField(
          initialValue: widget.feeItemGroupsModel?.scheduleName,
          title: "ScheduleName",
          controller: _scheduleName,
          validate: Validate.withOption(
            isRequired: true,
          ),
        ),
        CustomDropDownList<String>(
          loadData: () async => grades,
          displayName: (x) => x,
          shouldReload: true,
          controller: _grade,
          title: "Grade",
          validate: Validate.withOption(isRequired: true),
          onSelected: (value, index) => setState(() {}),
        ),
        for (var i = 0; i < _feeItems.length; i++) buildItem(i),
        ListTile(
          title: Text("Add Fee Item"),
          trailing: Icon(Icons.add),
          onTap: addItem,
        ),
        CustomActionButton(
          state: ButtonState.idle,
          title: edit ? "Update" : "Add",
          color: green,
          padding: EdgeInsets.symmetric(vertical: height * 1.5),
          margin: EdgeInsets.symmetric(
              horizontal: width * 25, vertical: height * 6),
          onTap: () async {
            print('add userSession');
            if (_validate()) {
              FeeItemGroupsModel _feeItemGroups = FeeItemGroupsModel(
                  scheduleName: _scheduleName.text,
                  version: 1,
                  feeItem: _feeItems,
                  grade: _grade.text);
              if (edit) {
                BlocProvider.of<itembloc.FeeItemGroupsModelBloc>(context).add(
                  itembloc.updateItem(
                    item: _feeItemGroups,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              } else {
                BlocProvider.of<itembloc.FeeItemGroupsModelBloc>(context).add(
                  itembloc.createItem(
                    item: _feeItemGroups,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                  ),
                );
              }
            }
          },
        ),
      ],
    );
  }

  Widget buildItem(int i) {
    return Card(
      elevation: 3,
      // color: Colors.black.withOpacity(0.1),
      child: ExpansionTile(
        initiallyExpanded: i == 0,
        trailing: IconButton(
          icon: Icon(
            Icons.close,
            color: green,
          ),
          onPressed: () => removeItem(i),
        ),
        title: Text(
          "Fee Item $i",
          style: TextStyle(color: green),
        ),
        children: [
          CustomDropDownList<String>(
            loadData: () async => feeItemName,
            displayName: (x) => x,
            shouldReload: true,
            controller: _controllers[i * 3],
            title: "Fee Item Name",
            validate: Validate.withOption(isRequired: true),
            onSelected: (value, index) => _feeItems[i].feeItemName = value,
          ),
          // CustomTextField(
          //   title: "Fee Item Name",
          //   initialValue: _feeItems[i].feeItemName,
          //   controller: _controllers[i * 3],
          //   onChange: (text) => _feeItems[i].feeItemName = text,
          //   validate: Validate.withOption(isRequired: true),
          // ),
          CustomTextField(
            title: "Amount",
            controller: _controllers[i * 3 + 1],
            initialValue: _feeItems[i].amount?.toString(),
            onChange: (text) => _feeItems[i].amount = int.tryParse(text),
            validate: Validate.withOption(isRequired: true),
          ),
          CustomTextField(
            title: "Tax",
            controller: _controllers[i * 3 + 2],
            initialValue: _feeItems[i].tax?.toString(),
            onChange: (text) => _feeItems[i].tax = int.tryParse(text),
            validate: Validate.withOption(isRequired: true),
          ),
          CustomSwitchWithTitle(
            title: "Is Prorated",
            isEnabled: _feeItems[i].isProrated,
            onChange: (x) => setState(() => _feeItems[i].isProrated = x),
          ),
          CustomSwitchWithTitle(
            title: "Is Discount applicable",
            isEnabled: _feeItems[i].isDiscountApplicable,
            onChange: (x) =>
                setState(() => _feeItems[i].isDiscountApplicable = x),
          ),
        ],
      ),
    );
  }
}
