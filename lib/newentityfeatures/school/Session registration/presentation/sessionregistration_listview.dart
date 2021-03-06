import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_floating_action.dart';
//
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/data/data.dart';
import 'package:complex/newentityfeatures/Models/user_session_registration.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import 'session_registration_form.dart';

class SessionRegistrationListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  SessionRegistrationListList({this.entitytype, this.entityid});

  @override
  _SessionRegistrationListListState createState() =>
      _SessionRegistrationListListState();
}

class _SessionRegistrationListListState
    extends State<SessionRegistrationListList> {
  listbloc.SessionRegistrationListBloc mlistbloc;
  CustomTextFieldController _grade = CustomTextFieldController();
  CustomTextFieldController _sessionterm = CustomTextFieldController();
  CustomTextFieldController _offering = CustomTextFieldController();

  TextEditingController _card = TextEditingController();

  listbloc.StudentSearchState searchState;

  bool hasError = false;

  initSearchFields() {
    _card.text = searchState?.card;
  }

  List<String> gradelist;
  List<String> sessionterm;
  Future<List<String>> offeringgrouplist;
  List<UserSessionRegModel> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;
  void initState() {
    super.initState();
    mlistbloc = listbloc.SessionRegistrationListBloc();
    mlistbloc.add(listbloc.getPreData(
        entitytype: widget.entitytype, entityid: widget.entityid));
    mlistbloc.add(listbloc.getListData(
        entitytype: widget.entitytype, entityid: widget.entityid));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    //profileBloc.dispose() cannot call as ProfileBloc class doesn't have dispose method
    super.dispose();
  }

  void doreload(bool reloadtype) {
    if (reloadtype) {
      mlistbloc.add(listbloc.getListData(
          entitytype: widget.entitytype, entityid: widget.entityid));
    }
  }

  VoidCallback addButtonActions({
    @required BuildContext context,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SessionRegistrationForm(
            userSessionRegModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<UserSessionRegModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      print("item pawa gese$item");
      _dynamicList.add(ListStateClass(
        title: "${item.feePLan ?? ''} ${item.docID ?? ""}",
        // subtitle: "grade: ${item.grade}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SessionRegistrationForm(
                  userSessionRegModel: item,
                  entitytype: widget.entitytype,
                  entityid: widget.entityid,
                  givenreloadaction: doreload),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.SessionRegistrationListBloc>(context).add(
                listbloc.deleteItemWithData(
                    entitytype: widget.entitytype,
                    entityid: widget.entitytype,
                    item: listItems[index]));
          }
        },
      ));
    });

    return _dynamicList;
  }

  Future<bool> _asyncConfirmDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Item Confirmation ?'),
          content: const Text('This will delete the data.'),
          actions: [
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text('CONFIRM'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: mlistbloc,
      child: Scaffold(
          appBar: CustomAppBar(
            title: "Session Registration List",
          ),
          body: BlocListener<listbloc.SessionRegistrationListBloc,
                  listbloc.SessionRegistrationListState>(
              listener: (context, state) {
            if (state is listbloc.IsDeleted) {
              EasyLoading.showSuccess("Item is deleted");
              doreload(true);
            }
            if (state is listbloc.StudentSearchState) {
              setState(() {
                searchState = state;
                initSearchFields();
              });
            }
            if (state is listbloc.StudentSearchSuccessfullState) {
              setState(() {
                initSearchFields();
                em = state.user;
              });
            }

            if (state is listbloc.IsSearchParaLoaded) {
              setState(() {
                gradelist = state.gradelist;
                sessionterm = state.sessiontermlist;
                offeringModelGroupfunc = state.offeringModelGroupfunc;
              });
            }
            if (state is listbloc.IsListDataLoaded) {
              setState(() {
                em = state.listdata;
              });
            }
          }, child: BlocBuilder<listbloc.SessionRegistrationListBloc,
                      listbloc.SessionRegistrationListState>(
                  builder: (context, state) {
            if (state is listbloc.IsBusy)
              return Center(
                child: Container(
                    width: 20, height: 20, child: CircularProgressIndicator()),
              );
            if (state is listbloc.HasLogicalFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.HasExceptionFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.HasExceptionFaliur)
              return Center(child: Text(state.error));
            if (state is listbloc.IsDeleted) {
              return Center(child: Text("Deleted item"));
            }
            if (state is listbloc.IsSearchParaLoaded) {
              return _blocBuilder(context);
            }

            if (state is listbloc.IsListDataLoaded ||
                state is listbloc.StudentSearchState ||
                state is listbloc.StudentSearchSuccessfullState) {
              return _blocBuilder(context);
            }
            return Center(child: Text('Empty'));
          })),
          floatingActionButton: CustomFloatingButton(
            onTap: () async {
              addButtonActions(context: context);
            },
            buttonColor: ColorConstants.primaryColor,
            borderColor: ColorConstants.primaryColor,
            text: "Add New",
          )),
    );
  }

  Widget _blocBuilder(context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: ExpansionTile(
              title: Text("Select Parameters To Search"),
              children: [
                search(
                  label: "Card Num",
                  controller: _card,
                  error: hasError && searchState.card.isNotEmpty
                      ? "Can find the User"
                      : null,
                  onChange: () {},
                ),
                CustomActionButton(
                  title: "Get Student",
                  gradient: C.bgGradient,
                  onTap: () {
                    if (_card.text.isEmpty) {
                      EasyLoading.showInfo("Please enter one item");
                      return;
                    }

                    BlocProvider.of<listbloc.SessionRegistrationListBloc>(
                            context)
                        .add(
                      listbloc.StudentSearchEvent(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        card: _card.text,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "Session Registration List",
                dynamicListState: "Session Registration List",
                listItems: em != null ? toCommonListState(em, context) : [])),
      ],
    );
  }

  void OnSelectedAction(String item, int index) {}

  Widget search({
    TextEditingController controller,
    String label,
    String error,
    void Function() onChange,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          errorText: error,
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          labelText: label,
        ),
        onChanged: (text) => onChange(),
      ),
    );
  }
}
