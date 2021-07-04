import 'package:complex/application/lookup_bloc/lookup_bloc.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/domain/entity/school/lookup/lookup.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/common/presentation.dart';
// import 'package:complex/newentityfeatures/f_lookups/cf_lookuptypes/roominfo/itembloc/bloc.dart'
//     as itembloc;
import 'package:complex/data/screen_size.dart';
import 'package:complex/common/model/button_state.dart';
import 'package:complex/common/helputil.dart';
import "package:asuka/asuka.dart" as asuka;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RoomFormPage extends StatefulWidget {
  final RoomInfo roomInfo;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;

  RoomFormPage(
      {@required this.roomInfo,
      @required this.entitytype,
      @required this.entityid,
      @required this.givenreloadaction});

  @override
  _RoomFormPageState createState() => _RoomFormPageState();
}

class _RoomFormPageState extends State<RoomFormPage> {
  CustomTextFieldController _roomName = CustomTextFieldController();
  CustomTextFieldController _roomAddress = CustomTextFieldController();

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
  Widget build(BuildContext context) {
    return BlocConsumer<LookupBloc, LookupState>(
      listener: (context, state) {
        state.failure.fold(() {
          if (state.isLoading) {
            EasyLoading.show(status: 'Loading..');
          } else if (state.message.isNotEmpty) {
            EasyLoading.showInfo(state.message);
          } else {
            EasyLoading.dismiss();
          }
        },
            (a) => showDialog(
                context: context,
                builder: (context) => ErrorDialogue(failure: a)));
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            title: "Rooms",
          ),
          body: Column(
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
                      BlocProvider.of<LookupBloc>(context).add(
                        CreateItem(
                            item: RoomInfo(
                                roomName: _roomInfo.roomName,
                                roomAddr: _roomInfo.roomName),
                            entityid: widget.entityid,
                            entitytype: widget.entitytype),
                      );
                    }
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
