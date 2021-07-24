import 'package:complex/common/widgets/custom_action_button.dart';
import 'package:complex/common/widgets/custom_app_bar.dart';
import 'package:complex/common/widgets/custom_floating_action.dart';
//
//import "package:asuka/asuka.dart" as asuka;
import 'package:complex/data/data.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/page/common_list_page_copy.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../listbloc/bloc.dart' as listbloc;
import './student_basic_form.dart';
import './student_actions_page.dart';

class StudentBasicFormModelListList extends StatefulWidget {
  final String entityid;
  final String entitytype;
  StudentBasicFormModelListList({this.entitytype, this.entityid});

  @override
  _StudentBasicFormModelListListState createState() =>
      _StudentBasicFormModelListListState();
}

class _StudentBasicFormModelListListState
    extends State<StudentBasicFormModelListList> {
  listbloc.StudentBasicFormModelListBloc mlistbloc;

  List<String> gradelist;
  List<String> sessionterm;
  Future<List<String>> offeringgrouplist;
  List<UserRegistrationModel> em;
  Future<List<String>> Function(String, String) offeringModelGroupfunc;

  TextEditingController _card = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _guardianPhone = TextEditingController();

  listbloc.StudentSearchState searchState;

  bool hasError = false;

  initSearchFields() {
    _card.text = searchState?.card;
    _phone.text = searchState?.phone;
    _guardianPhone.text = searchState?.guardianPhone;
  }

  void initState() {
    super.initState();
    initSearchFields();
    mlistbloc = listbloc.StudentBasicFormModelListBloc();
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
        builder: (context) => StudentBasicFormForm(
            userRegistrationModel: null,
            entitytype: widget.entitytype,
            entityid: widget.entityid,
            givenreloadaction: doreload),
      ),
    );
  }

  List<ListStateClass> toCommonListState(
      List<UserRegistrationModel> listItems, BuildContext context) {
    List<ListStateClass> _dynamicList = [];
    listItems.asMap().forEach((index, item) {
      _dynamicList.add(ListStateClass(
        title: "${item.name ?? ''} ${item.feePlan ?? ""}",
        tittleH1: "Age: ${item.isAdult}",
        tittleH2: "Guardian 1: ${item.guardian1name}",
        tittleH3: "Guardian 2: ${item.guardian2name}",
        tapAction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudentItemPage(
                userRegistrationModel: item,
                entitytype: widget.entitytype,
                entityid: widget.entityid,
                givenreloadaction: doreload,
                sessionTerm: sessionterm,
              ),
              // StudentBasicFormForm(
              //   userRegistrationModel: item,
              //   entitytype: widget.entitytype,
              //   entityid: widget.entityid,
              //   givenreloadaction: doreload,
              // ),
            ),
          );
        },
        deleteAction: () async {
          bool docancel = await _asyncConfirmDialog(context);
          if (docancel) {
            BlocProvider.of<listbloc.StudentBasicFormModelListBloc>(context)
                .add(listbloc.deleteItemWithData(
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
            title: "User Registration",
          ),
          body: BlocListener<listbloc.StudentBasicFormModelListBloc,
                  listbloc.StudentBasicFormModelListState>(
              listener: (context, state) {
            if (state is listbloc.StudentSearchState) {
              setState(() {
                searchState = state;
                initSearchFields();
              });
            }
            if (state is listbloc.StudentSearchSuccessfullState) {
              setState(() {
                // searchState = state;
                // initSearchFields();
                em = state.user;
              });

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => StudentBasicFormForm(
              //         userRegistrationModel: state.user,
              //         entitytype: widget.entitytype,
              //         entityid: widget.entityid,
              //         givenreloadaction: doreload),
              //   ),
              // );
            }

            if (state is listbloc.IsDeleted) {
              EasyLoading.showSuccess("Item Deleted");
              doreload(true);
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
          }, child: BlocBuilder<listbloc.StudentBasicFormModelListBloc,
                      listbloc.StudentBasicFormModelListState>(
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
            text: "Add User",
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
                  onChange: () {
                    // _card.text = "";
                    _phone.text = "";
                    _guardianPhone.text = "";
                  },
                ),
                search(
                  label: "Phone Number",
                  controller: _phone,
                  error: hasError && searchState.phone.isNotEmpty
                      ? "Can find the User"
                      : null,
                  onChange: () {
                    _card.text = "";
                    // _phone.text = "";
                    _guardianPhone.text = "";
                  },
                ),
                search(
                  label: "Guardian Phone Number",
                  controller: _guardianPhone,
                  error: hasError && searchState.guardianPhone.isNotEmpty
                      ? "Can find the User"
                      : null,
                  onChange: () {
                    _card.text = "";
                    _phone.text = "";
                    // _guardianPhone.text = "";
                  },
                ),
                CustomActionButton(
                  title: "Get Student",
                  gradient: C.bgGradient,
                  onTap: () {
                    if (_guardianPhone.text.isEmpty &&
                        _phone.text.isEmpty &&
                        _card.text.isEmpty) {
                      EasyLoading.showError("Please enter one item");
                      return;
                    }

                    BlocProvider.of<listbloc.StudentBasicFormModelListBloc>(
                            context)
                        .add(
                      listbloc.StudentSearchEvent(
                        entityid: widget.entityid,
                        entitytype: widget.entitytype,
                        guardianPhone: _guardianPhone.text,
                        phone: _phone.text,
                        card: _card.text,
                      ),
                    );
                  },
                ),
                // CustomActionButton(
                //   title: "Add Student",
                //   gradient: C.bgGradient,
                //   onTap: () {
                //     BlocProvider.of<SchoolBloc>(context).add(
                //       StudentBasicFormSchoolEvent(
                //         formIndex: 0,
                //         student: null,
                //         update: false,
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: CommonListPage(
                canSearch: false,
                updateAction: null,
                appBarTitle: "User Registration",
                dynamicListState: "User Registration",
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
