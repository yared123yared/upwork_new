import 'package:complex/domain/lookup/lookup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/roominfo/itembloc/bloc.dart'
    as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;

class RoomForm extends StatefulWidget {
  final RoomInfo roomInfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RoomForm(
      {@required this.roomInfo,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});

  @override
  _RoomFormState createState() => _RoomFormState();
}

class _RoomFormState extends State<RoomForm> {
  CustomTextFieldController _roomName = CustomTextFieldController();
  CustomTextFieldController _roomAddress = CustomTextFieldController();
  itembloc.RoomInfoBloc mbloc;

  bool edit = false;

  bool _validate() {
    return Validate.validateAll([_roomAddress, _roomName]);
  }

  Future _initFiledValue() async {
    edit = widget.roomInfo != null;

    if (widget.roomInfo != null) {
      Future.delayed(Duration(milliseconds: 80), () {
        _roomName.text = widget.roomInfo.roomName;
        _roomAddress.text = widget.roomInfo.roomAddr;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    mbloc.add(itembloc.getForNewEntry(
        entitytype: widget.entitytype, entityid: widget.entityid));

    _initFiledValue();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mbloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Room Info'),
          centerTitle: true,
        ),
        body: BlocListener<itembloc.RoomInfoBloc, itembloc.RoomInfoState>(
            listener: (context, state) {
          if (state is itembloc.IsSaved) {
            asuka.showSnackBar(SnackBar(
              content: Text("Item is Created/Saved"),
            ));
            widget.givenreloadaction(true);
            Navigator.of(context).pop(false);
          }
        }, child: BlocBuilder<itembloc.RoomInfoBloc, itembloc.RoomInfoState>(
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

  @override
  @override
  Widget _blocBuilder(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CustomTextField(
                      initialValue: widget.roomInfo?.roomName,
                      title: "Room Name",
                      enabled: !edit,
                      controller: _roomName,
                      validate: Validate.withOption(isRequired: true),
                    ),
                    CustomTextField(
                      initialValue: widget.roomInfo?.roomAddr,
                      title: "Room Address",
                      enabled: !edit,
                      controller: _roomAddress,
                      validate: Validate.withOption(isRequired: true),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (!edit)
          CustomActionButton(
            state: ButtonState.idle,
            title: !edit ? "Add" : "Update",
            padding: EdgeInsets.symmetric(vertical: height * 1.5),
            margin: EdgeInsets.symmetric(
                horizontal: width * 25, vertical: height * 6),
            onTap: () async {
              print('add userSession');
              if (_validate()) {
                RoomInfo _roomInfo = RoomInfo(
                  roomName: _roomName.text,
                  roomAddr: _roomAddress.text,
                );
                mbloc.add(itembloc.createItem(
                    item: _roomInfo,
                    entityid: widget.entityid,
                    entitytype: widget.entitytype));
              }
            },
          ),
      ],
    );
  }
}
