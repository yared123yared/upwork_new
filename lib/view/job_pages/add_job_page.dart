import 'package:complex/blocs/product_bloc.dart';
import 'package:complex/data/api/api_service.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/common/widgets/alerts_widget.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/screen_with_loader.dart';
import 'package:complex/common/widgets/tap_widget.dart';
import 'package:complex/domain/explore/ecom/contact_details/contact_details.dart';
import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/domain/explore/ecom/product/product_data/job_model.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';

class AddJobPage extends StatefulWidget {
  final ContactDetails contactDetail;
  final CompleteJob completeJob;

  AddJobPage(this.contactDetail,{this.completeJob});

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
  ProductBloc _productBloc;
  var _isOwner = true;

  void _handleAddPetResponse(AddNewJobState state) {
    switch (state.apiState) {
      case ApiStatus.LOADING:
        _isLoading = true;
        break;
      case ApiStatus.SUCCESS:
        _isLoading = false;
        AlertsWidget.alertWithOkBtn(
          context: context,
          onOkClick: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          text: state.response.message,
        );
        break;
      case ApiStatus.ERROR:
        _isLoading = false;
        Utility.showSnackBar(key: _key, message: state.message);
        break;
      case ApiStatus.INITIAL:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    _productBloc = BlocProvider.of<ProductBloc>(context);
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state is AddNewJobState) _handleAddPetResponse(state);
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return Scaffold(
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
          );
        },
      ),
    );
  }

  Widget _renderForm() {
    return Column(
      children: [
        _renderTextField("Title", _title),
        _renderTextField("Job Description", _jd),
        _renderTextField("Company Name", _companyName),
        _renderPartTime(),
        GroupTitle(text: 'Salary Range'),
        _renderTextField("Min Value", _minValue, isInt: true),
        _renderTextField("Max Value", _maxValue, isInt: true),
        GroupTitle(text: 'Education Qualification'),
        _renderIsMilkingNow(),
        _renderTextField("Year of Experience", _yearExperience, isInt: true),
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
      {bool isInt = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomTextField(
        initialValue: widget.completeJob?.toString(),
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
    JobModel _jobModel = JobModel(
      contactdetails: widget.contactDetail,
      listingownertype: null,
      title: _title.text.trim(),
      description: _jd.text.trim(),
      docid: null,
      serviceproviderid: null,
      userid: UserSession.userId,
      arefreshersallowed: _isFresherAllowed,
      companylogo: _photo,
      companyname: _companyName.text.trim(),
      educationqualification: null,
      isparttime: _isPartTime,
      maxsalaryrange: int.parse(_maxValue.text.trim()),
      minsalaryrange: int.parse(_minValue.text.trim()),
      minyearexperience: int.parse(_yearExperience.text.trim()),
      worktype: null,
    );
    _productBloc
        .add(AddNewJobEvent(model: _jobModel, userId: UserSession.userId));
  }
}
