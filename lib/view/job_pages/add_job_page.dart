import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
// import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';

import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
// import 'package:complex/domain/explore/ecom/product/product_data/job_model.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injector/injector.dart';

class AddJobPage extends StatefulWidget {
  final ContactDetailsModel contactDetail;
  final CompleteJob completeJob;
  final String entitytype;
  final String entityid;
  final bool isService;
  final int origin;

  AddJobPage(this.contactDetail, {this.completeJob,@required String this.entitytype, @required String this.entityid,@required this.isService,@required this.origin});

  @override
  State<StatefulWidget> createState() {
    return _AddJobPageState();
  }
}

class _AddJobPageState extends State<AddJobPage> {
  CustomTextFieldController _title = CustomTextFieldController();
  CustomTextFieldController _jd = CustomTextFieldController();
  CustomTextFieldController _companyName = CustomTextFieldController();
  CustomTextFieldController _minValue = CustomTextFieldController();
  CustomTextFieldController _maxValue = CustomTextFieldController();
  CustomTextFieldController _yearExperience = CustomTextFieldController();
  bool _isLoading = false;
  bool _isPartTime = false;
  bool _isFresherAllowed = false;
  String _photo;
  var _channelsProvider = Injector.appInstance.get<ChannelsProvider>();
  var _key = GlobalKey<ScaffoldState>();

  double get screenWidth => MediaQuery.of(context).size.width;

  double get gridWidth => (screenWidth - 70) / 4;
  ProductOwnerBloc _productBloc;

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductOwnerBloc>(context);
    return BlocListener<ProductOwnerBloc, ProductOwnerState>(
        listener: (context, state) {
          state.failure.fold(() {
            if (state.isLoading) {
              EasyLoading.show(status: 'Loading..');
            } else if (state.message.isNotEmpty) {
              EasyLoading.showInfo(state.message);
            } else {
              EasyLoading.dismiss();
            }
          }, (a) {
            EasyLoading.dismiss();

            showDialog(
                context: context,
                builder: (context) => ErrorDialogue(failure: a));
          });
        },
        child: Scaffold(
          key: _key,
          appBar: AppBar(
            title: Text('Generic Properties'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            backgroundColor: ColorConstants.greenColor,
          ),
          body: ScreenWithLoader(
            isLoading: _isLoading,
            body: SingleChildScrollView(
              child: _renderForm(),
            ),
          ),
        ));
  }

  Widget _renderForm() {
    return Column(
      children: [
        _renderTextField("Title", _title,
            initialValue: widget.completeJob?.data?.title),
        _renderTextField("Job Description", _jd,
            initialValue: widget.completeJob?.data?.description),
        _renderTextField("Company Name", _companyName,
            initialValue: widget.completeJob?.data?.companyname),
        _renderPartTime(), //TODO kousik
        GroupTitle(text: 'Salary Range'),
        _renderTextField("Min Value", _minValue,
            isInt: true,
            initialValue: widget.completeJob?.data?.minsalaryrange?.toString()),
        _renderTextField("Max Value", _maxValue,
            isInt: true,
            initialValue: widget.completeJob?.data?.maxsalaryrange?.toString()),
        GroupTitle(text: 'Education Qualification'),
        _renderIsMilkingNow(),
        _renderTextField("Year of Experience", _yearExperience,
            isInt: true,
            initialValue:
                widget.completeJob?.data?.minyearexperience?.toString()),
        GroupTitle(text: 'Upload (Company Logo/Photo)'),
        _renderPhotosGrid(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButton(
            onTap: _onRegisterClick,
            text: "Register",
            borderColor: ColorConstants.primaryColor,
          ),
        )
      ],
    );
  }

  Widget _renderPartTime() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Is Part Time',
            style: Styles.lightText(size: 16),
          ),
          _renderCheckBox(
            checkValue: _isPartTime,
            onChange: () {
              _isPartTime = !_isPartTime;
            },
          )
        ],
      ),
    );
  }

  Widget _renderIsMilkingNow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fresher Allowed',
            style: Styles.lightText(size: 16),
          ),
          _renderCheckBox(
            checkValue: _isFresherAllowed,
            onChange: () {
              _isFresherAllowed = !_isFresherAllowed;
            },
          )
        ],
      ),
    );
  }

  Widget _renderCheckBox(
      {@required bool checkValue, @required Function onChange}) {
    return Row(
      children: [
        _renderCheckBoxArea('Yes', checkValue, () {
          if (checkValue) {
            return;
          }

          setState(() {
            onChange();
          });
        }),
        _renderCheckBoxArea('No', !checkValue, () {
          if (!checkValue) {
            return;
          }
          setState(() {
            onChange();
          });
        }),
      ],
    );
  }

  Widget _renderCheckBoxArea(String text, bool _checkValue, Function onChange) {
    return Container(
      padding: EdgeInsets.only(right: 5),
      child: InkWell(
        onTap: () {
          onChange();
        },
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border:
                      Border.all(color: ColorConstants.greenColor, width: 2)),
              child: Container(
                  margin: const EdgeInsets.all(3.0),
                  child: _checkValue
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            color: ColorConstants.greenColor,
                            height: 10,
                            width: 10,
                          ))
                      : Container(
                          color: Colors.transparent,
                          width: 10,
                          height: 10,
                        )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(text, style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderTextField(String text, CustomTextFieldController controller,
      {bool isInt = false, @required String initialValue}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomTextField(
        initialValue: initialValue,
        title: text,
        controller: controller,
        validate: Validate.withOption(
          isRequired: true,
          isNumber: isInt,
          isInt: isInt,
        ),
      ),
    );
  }

  Widget _renderPhotosGrid() {
    Widget _renderGrid() {
      return Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.only(top: 15, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _photo == null
                ? TapWidget(
                    onTap: () async {
                      try {
                        var pickedFile = await FilePicker.platform
                            .pickFiles(type: FileType.image);
                        if (pickedFile != null && pickedFile.files != null) {
                          setState(() {
                            _isLoading = true;
                          });
                          var image = await _channelsProvider.sendFile(
                              "Images", pickedFile?.files?.first?.path);
                          if (image != null) {
                            _photo = image;
                          }
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      } catch (error) {
                        print(error);
                      }
                    },
                    child: Container(
                      height: 65,
                      width: 65,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.65)),
                      alignment: Alignment.center,
                      child: Icon(Icons.add),
                    ),
                  )
                : Container(
                    height: 65,
                    width: 65,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_photo),
                      ),
                    ),
                  )
          ],
        ),
      );
    }

    return _renderGrid();
  }

  _onRegisterClick() {
    CompleteJob newJob;

    if (widget.completeJob != null) {
      newJob = widget.completeJob.copyWith(
          docId: '',
          dt: 'job',
          serviceId: '',
          userId: UserSession.userId,
          data: widget.completeJob.data.copyWith(
            contactdetails: widget.contactDetail,
            listingownertype: null,
            title: _title.text.trim(),
            description: _jd.text.trim(),
            arefreshersallowed: _isFresherAllowed,
            companylogo: _photo,
            companyname: _companyName.text.trim(),
            educationqualification: '',
            isparttime: _isPartTime,
            maxsalaryrange: int.parse(_maxValue.text.trim()),
            minsalaryrange: int.parse(_minValue.text.trim()),
            minyearexperience: int.parse(_yearExperience.text.trim()),
            worktype: '',
          ));
      _productBloc.add(
        ProductOwnerEvent.update(productData: newJob,entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    } else {
      newJob = CompleteJob(
          docId: '',
          dt: 'job',
          serviceId: '',
          userId: UserSession.userId,
          data: JobPosting(
            contactdetails: widget.contactDetail,
            listingownertype: null,
            title: _title.text.trim(),
            description: _jd.text.trim(),
            arefreshersallowed: _isFresherAllowed,
            companylogo: _photo,
            companyname: _companyName.text.trim(),
            educationqualification: '',
            isparttime: _isPartTime,
            maxsalaryrange: int.parse(_maxValue.text.trim()),
            minsalaryrange: int.parse(_minValue.text.trim()),
            minyearexperience: int.parse(_yearExperience.text.trim()),
            worktype: '',
          ));

      _productBloc.add(
        ProductOwnerEvent.add(productData: newJob,entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    }
  }
}
