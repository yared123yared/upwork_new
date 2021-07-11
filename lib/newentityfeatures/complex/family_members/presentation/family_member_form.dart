import 'package:complex/newentityfeatures/Models/family_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

import '../itembloc/bloc.dart' as itembloc;

class FamilyMemberForm extends StatefulWidget {
  final FamilyMember familyMember;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  FamilyMemberForm({
    @required this.familyMember,
    @required this.givenreloadaction,
    this.entitytype,
    this.entityid,
  });

  @override
  _FamilyMemberFormState createState() => _FamilyMemberFormState();
}

class _FamilyMemberFormState extends State<FamilyMemberForm> {
  CustomTextFieldController phoneNumber = CustomTextFieldController();
  CustomTextFieldController emailAddress = CustomTextFieldController();
  CustomTextFieldController unitsController = CustomTextFieldController();

  bool update;
  List<String> models;

  bool validate() {
    return Validate.validateAll([
      emailAddress,
      phoneNumber,
      unitsController,
    ]);
  }

  @override
  void initState() {
    super.initState();
    print('init state');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => itembloc.FamilyMemberBloc()
        ..add(
          itembloc.getForNewEntry(
            entityid: widget.entityid,
            entitytype: widget.entitytype,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Family Members'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.FamilyMemberBloc,
            itembloc.FamilyMemberState>(listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }

          if (state is itembloc.IsReadyForDetailsPage) {
            update = widget.familyMember != null;
            models = state.models;

            // _initFiledValue();
          }
        }, child:
            BlocBuilder<itembloc.FamilyMemberBloc, itembloc.FamilyMemberState>(
                builder: (context, state) {
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
      padding: EdgeInsets.all(20),
      children: [
        CustomTextField(
          enabled: !update,
          initialValue: widget.familyMember?.email,
          controller: emailAddress,
          title: 'Email Address',
          validate: Validate.withOption(
            isRequired: true,
            isEmail: true,
          ),
        ),
        CustomTextField(
          title: "Published Contact",
          // initialValue: widget.familyMember?,
          controller: phoneNumber,
          validate: Validate.withOption(
            isRequired: true,
            isNumber: true,
          ),
        ),
        CustomDropDownList<String>(
          enabled: !update,
          initialValue: widget.familyMember?.modelId,
          controller: unitsController,
          displayName: (data) => data,
          loadData: () async => models,
          title: "Unit",
          validate: Validate.withOption(
            isRequired: true,
          ),
        ),
        if (!update)
          CustomActionButton(
            title: 'Add Member',
            onTap: () {
              if (validate()) {
                BlocProvider.of<itembloc.FamilyMemberBloc>(context).add(
                  itembloc.createItem(
                    entityid: widget.entityid,
                    entitytype: widget.entitytype,
                    item: FamilyMember(
                      email: emailAddress.text,
                      modelId: unitsController.text,
                      name: '',
                      userId: '',
                      vehiclenumber: '',
                      qrcodeimg: '',
                      vehicleactive: false,
                    ),
                  ),
                  // AddFamilyMemberEvent(
                  //   member: FamilyMember(
                  //     email: emailAddress.text,
                  //     modelId: unitsController.text,
                  //     name: '',
                  //     userId: '',
                  //   ),
                  // ),
                );
              }
            },
          ),
      ],
    );
  }
}
