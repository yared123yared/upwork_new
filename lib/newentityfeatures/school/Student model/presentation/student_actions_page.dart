import 'package:complex/common/presentation.dart';
import 'package:complex/newentityfeatures/Models/user_registration_model.dart';
import 'package:complex/newentityfeatures/school/FeePayment/presentation/feepayment_listview.dart';
import 'package:complex/newentityfeatures/school/Session%20registration/presentation/session_registration_form.dart';
import 'package:flutter/material.dart';
import 'package:complex/common/model/dynamic_list_state_class.dart';
import 'package:complex/common/helputil.dart' hide DateTimeMode;

import 'student_basic_form.dart';

class StudentItemPage extends StatelessWidget {
  final UserRegistrationModel userRegistrationModel;
  final String entityid;
  final String entitytype;
  final ReloadAction givenreloadaction;
  final List<String> sessionTerm;

  const StudentItemPage({
    Key key,
    this.userRegistrationModel,
    this.entityid,
    this.entitytype,
    this.givenreloadaction,
    this.sessionTerm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomTextFieldController _sessionTerm = CustomTextFieldController();
    return Scaffold(
      appBar: AppBar(
        title: Text(userRegistrationModel.name),
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          CustomActionButton(
            title: "Edit User Information",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentBasicFormForm(
                    givenreloadaction: givenreloadaction,
                    userRegistrationModel: userRegistrationModel,
                    entityid: entityid,
                    entitytype: entitytype,
                  ),
                ),
              );
              // showDialog(
              //   context: context,
              //   builder: (context) => AlertDialog(
              //     title: Text("Session Term"),
              //     content: CustomDropDownList<String>(
              //       displayName: (data) => data,
              //       loadData: () async => sessionTerm,
              //       title: "Session Term",
              //       controller: _sessionTerm,
              //       onSelected: (value, index) {
              //         Navigator.pop(context);
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => SessionRegistrationForm(
              //               // userRegistrationModel: userRegistrationModel,
              //               entitytype: entitytype,
              //               entityid: entityid,
              //               givenreloadaction: givenreloadaction,
              //               cardNum: userRegistrationModel.idCardNum,
              //               sessionTerm: value,
              //             ),
              //           ),
              //         );
              //       },
              //     ),
              //   ),
              // );
            },
          ),
          CustomActionButton(
            title: "Add User Session Registration",
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Session Term"),
                  content: CustomDropDownList<String>(
                    displayName: (data) => data,
                    loadData: () async => sessionTerm,
                    title: "Session Term",
                    controller: _sessionTerm,
                    onSelected: (value, index) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SessionRegistrationForm(
                            userRegistrationModel: userRegistrationModel,
                            entitytype: entitytype,
                            entityid: entityid,
                            givenreloadaction: givenreloadaction,
                            cardNum: userRegistrationModel.idCardNum,
                            sessionTerm: value,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
          CustomActionButton(
            title: "Fee Payment",
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Session Term"),
                  content: CustomDropDownList<String>(
                    displayName: (data) => data,
                    loadData: () async => sessionTerm,
                    title: "Session Term",
                    controller: _sessionTerm,
                    onSelected: (value, index) {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FeePaymentListList(
                            // userRegistrationModel: userRegistrationModel,
                            entitytype: entitytype,
                            entityid: entityid,
                            cardNum: userRegistrationModel.idCardNum,
                            sessionTerm: value,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
      /*  CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: ExpansionTile(
                title: Text("Select Parameters To Search"),
                children: [
                  CustomActionButton(
                    title: "Add User Session Registration",
                    onTap: () {
                      SessionRegistrationForm(
                        // userRegistrationModel: userRegistrationModel,
                        entitytype: entitytype,
                        entityid: entityid,
                        givenreloadaction: givenreloadaction,
                      );
                    },
                  ),
                  // CustomActionButton(
                  //   title: "Fee Payment",
                  //   onTap: () {
                  //     //
                  //   },
                  // ),
                  CustomActionButton(
                    title: "Fee Payment",
                    onTap: () {
                      //
                    },
                  ),
                  // search(
                  //   label: "Card Num",
                  //   controller: _card,
                  //   error: hasError && searchState.card.isNotEmpty
                  //       ? "Can find the User"
                  //       : null,
                  //   onChange: () {
                  //     // _card.text = "";
                  //     _phone.text = "";
                  //     _guardianPhone.text = "";
                  //   },
                  // ),
                  // search(
                  //   label: "Phone Number",
                  //   controller: _phone,
                  //   error: hasError && searchState.phone.isNotEmpty
                  //       ? "Can find the User"
                  //       : null,
                  //   onChange: () {
                  //     _card.text = "";
                  //     // _phone.text = "";
                  //     _guardianPhone.text = "";
                  //   },
                  // ),
                  // search(
                  //   label: "Guardian Phone Number",
                  //   controller: _guardianPhone,
                  //   error: hasError && searchState.guardianPhone.isNotEmpty
                  //       ? "Can find the User"
                  //       : null,
                  //   onChange: () {
                  //     _card.text = "";
                  //     _phone.text = "";
                  //     // _guardianPhone.text = "";
                  //   },
                  // ),
                  // CustomActionButton(
                  //   title: "Get Student",
                  //   gradient: C.bgGradient,
                  //   onTap: () {
                  //     if (_guardianPhone.text.isEmpty &&
                  //         _phone.text.isEmpty &&
                  //         _card.text.isEmpty) {
                  //       asuka.showSnackBar(
                  //         SnackBar(content: Text("Please enter one item")),
                  //       );
                  //       return;
                  //     }

                  //     BlocProvider.of<listbloc.StudentBasicFormModelListBloc>(
                  //             context)
                  //         .add(
                  //       listbloc.StudentSearchEvent(
                  //         entityid: widget.entityid,
                  //         entitytype: widget.entitytype,
                  //         guardianPhone: _guardianPhone.text,
                  //         phone: _phone.text,
                  //         card: _card.text,
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //     child: CommonListPage(
          //         canSearch: false,
          //         updateAction: null,
          //         appBarTitle: "Attach Assignment List",
          //         dynamicListState: "Attach Assignment List",
          //         listItems: em != null ? toCommonListState(em, context) : [])),
        ],
      ), */
    );
  }
}
