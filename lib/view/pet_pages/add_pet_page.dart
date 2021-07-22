import 'package:complex/application/explore/ecom/product_owner/product_owner_bloc.dart';
import 'package:complex/data/models/response/auth_response/user_session.dart';
import 'package:complex/data/providers/channel_provider.dart';
import 'package:complex/data/providers/product_provider_old.dart';
import 'package:complex/common/widgets/custom_button.dart';
import 'package:complex/common/widgets/custom_dropdown.dart';
import 'package:complex/common/widgets/custom_text_field.dart';
import 'package:complex/common/widgets/group_title.dart';
import 'package:complex/common/widgets/tap_widget.dart';

import 'package:complex/domain/explore/ecom/product/product_data/complete_product_data.dart';
import 'package:complex/utils/resource/colors.dart';
import 'package:complex/utils/styles.dart';
import 'package:complex/utils/utility.dart';
import 'package:complex/view/widget/error_dialogue.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injector/injector.dart';

class AddPetPage extends StatefulWidget {
  final ContactDetailsModel contactDetail;
  final CompletePet completePet;
  final String entitytype;
  final String entityid;
  final bool isService;
  final int origin;
  AddPetPage(this.contactDetail, {this.completePet,@required String this.entitytype, @required String this.entityid,@required this.isService,@required this.origin});

  @override
  State<StatefulWidget> createState() {
    return _AddPetPageState();
  }
}

class _AddPetPageState extends State<AddPetPage> {
  CustomTextFieldController _titleController = CustomTextFieldController();
  CustomTextFieldController _descriptionController =
      CustomTextFieldController();
  CustomTextFieldController _nameController = CustomTextFieldController();
  CustomTextFieldController _ageController = CustomTextFieldController();
  CustomTextFieldController _sexController = CustomTextFieldController();
  CustomTextFieldController _breedController = CustomTextFieldController();
  CustomTextFieldController _priceController = CustomTextFieldController();
  CustomTextFieldController _petTypeController = CustomTextFieldController();
  CustomTextFieldController _milkQuantityController =
      CustomTextFieldController();
  bool _isMilking = false;
  List<String> _photos = [];
  var _channelsProvider = Injector.appInstance.get<ChannelsProvider>();
  var _key = GlobalKey<ScaffoldState>();
  ProductOwnerBloc _productBloc;
  var _isOwner = true;
  var _productProvider = Injector.appInstance.get<ProductProviderOld>();
  List<String> _petList = [];
  List<String> _breed = [];

  double get screenWidth => MediaQuery.of(context).size.width;

  double get gridWidth => (screenWidth - 70) / 4;

  @override
  void initState() {
    super.initState();
    EasyLoading.show(status: 'loading');
    Utility.waitFor(2).then((value) {
      _productProvider.getAnimalType().then((result) {
        print("result :: $result");
        if (result != null) {
          List<String> local = List<String>.from(result['values']);
          _petList.addAll(local);
        }
      });
      EasyLoading.dismiss();
    });
  }

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
        body: _renderForm(),
      ),
    );
  }

  Widget _petTypeDropdown(
    String text,
    CustomTextFieldController controller,
    List<String> items,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomDropDownList<String>(
        title: text,
        controller: controller,
        loadData: () async => items,
        displayName: (x) => x,
        onSelected: (name, index) {
          print("SELECTED ITEM ::  $name  $index");
          EasyLoading.show(status: 'loading');

          _productProvider.breedList(name: name).then((result) {
            print("result :: $result");
            if (result != null) {
              List<String> local = List<String>.from(result['values']);
              _breed.clear();
              _breed.addAll(local);
            } else {
              _breed.clear();
            }
            _breedController.clear();
            EasyLoading.dismiss();
          });
        },
        validate: Validate.withOption(
          isRequired: true,
        ),
      ),
    );
  }

  Widget _breedDropdown(
    String text,
    CustomTextFieldController controller,
    List<String> items,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomDropDownList<String>(
        title: text,
        controller: controller,
        loadData: () async => items,
        displayName: (x) => x,
        onSelected: (name, index) {
          print("SELECTED ITEM ::  $name  $index");
        },
        validate: Validate.withOption(
          isRequired: true,
        ),
      ),
    );
  }

//xoxo
  Widget _renderForm() {
    return Column(
      children: [
        _renderTextField("Title", _titleController,
            initialValue: widget.completePet?.data?.title),
        _renderTextField("Description", _descriptionController,
            initialValue: widget.completePet?.data?.description),
        _renderTextField("Name", _nameController,
            initialValue: widget.completePet?.data?.petname),
        _renderTextField("Age", _ageController,
            isInt: true,
            initialValue: widget.completePet?.data?.age.toString()),
        _renderTextField("Sex", _sexController,
            initialValue: widget.completePet?.data?.gender),
        _petTypeDropdown("Pet Type", _petTypeController, _petList),
        _breedDropdown("Breed", _breedController, _breed),
        _renderTextField("Price", _priceController,
            isInt: true,
            initialValue: widget.completePet?.data?.price.toString()),
        _renderOwner(),
        GroupTitle(text: 'Milk Info'),
        _renderIsMilkingNow(),
        _renderTextField("Milk Quantity (Liter)", _milkQuantityController,
            isInt: true,
            initialValue: widget.completePet?.data?.milkqty.toString()),
        GroupTitle(text: 'Photos'),
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

  Widget _renderIsMilkingNow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Is Milking Now',
            style: Styles.lightText(size: 16),
          ),
          _renderCheckBox(
            checkValue: _isMilking,
            onChange: () {
              _isMilking = !_isMilking;
            },
          )
        ],
      ),
    );
  }

  Widget _renderOwner() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Are you?',
            style: Styles.lightText(size: 16),
          ),
          _renderOwnerType(
            checkValue: _isOwner,
            onChange: () {
              _isOwner = !_isOwner;
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

  Widget _renderOwnerType(
      {@required bool checkValue, @required Function onChange}) {
    return Row(
      children: [
        _renderCheckBoxArea('Owner', checkValue, () {
          if (checkValue) {
            return;
          }

          setState(() {
            onChange();
          });
        }),
        _renderCheckBoxArea('Dealer', !checkValue, () {
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
    Widget _renderText() {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Text(
          'On average, products with photos get 3-5 \ntimes more orders.',
          style: TextStyle(fontSize: 15, color: ColorConstants.darkBlackColor),
        ),
      );
    }

    Widget _renderGrid() {
      return Container(
        height: gridWidth * 2 + 30,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: TapWidget(
                onTap: () async {
                  try {
                    var pickedFile = await FilePicker.platform
                        .pickFiles(type: FileType.image);
                    if (pickedFile != null && pickedFile.files != null) {
                      EasyLoading.show(status: 'loading');

                      var image = await _channelsProvider.sendFile(
                          "Images", pickedFile?.files?.first?.path);
                      if (image != null) {
                        _photos.add(image);
                      }
                      EasyLoading.dismiss();
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
              ),
            ),
            Expanded(
              flex: 4,
              child: GridView.builder(
                itemCount: _photos.length,
                physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(left: 5, bottom: 5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(_photos[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_renderText(), _renderGrid()],
    );
  }

  _onRegisterClick() {
    CompletePet newPet;
    if (widget.completePet != null) {
      widget.completePet.copyWith(
        userId: UserSession.userId,
        data: widget.completePet.data.copyWith(
          description: _descriptionController.text.trim(),
          title: _titleController.text.trim(),
          contactdetails: widget.contactDetail,
          price: int.parse(_priceController.text.trim()),
          listingownertype: _isOwner ? "OWNER" : "DEALER",
          imagelist: _photos,
          age: int.parse(_ageController.text.trim()),
          animaltype: _petTypeController.text.trim(),
          breed: _descriptionController.text.trim(),
          gender: _descriptionController.text.trim(),
          ismilking: _isMilking,
          milkqty: _milkQuantityController.text.isNotEmpty
              ? int.parse(_milkQuantityController.text.trim())
              : null,
          petname: _descriptionController.text.trim(),
          vaccinated: false,
        ),
      );
      _productBloc.add(
        ProductOwnerEvent.update(productdata: newPet.data.toJson(),type:"pet",entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    } else {
      newPet = CompletePet(
          docId: '',
          dt: 'pet',
          serviceId: '',
          userId: UserSession.userId,
          data: PetModel(
            description: _descriptionController.text.trim(),
            title: _titleController.text.trim(),
            contactdetails: widget.contactDetail,
            price: int.parse(_priceController.text.trim()),
            listingownertype: _isOwner ? "OWNER" : "DEALER",
            imagelist: _photos,
            age: int.parse(_ageController.text.trim()),
            animaltype: _petTypeController.text.trim(),
            breed: _descriptionController.text.trim(),
            gender: _descriptionController.text.trim(),
            ismilking: _isMilking,
            serviceproviderid: widget.entityid,
            milkqty: _milkQuantityController.text.isNotEmpty
                ? int.parse(_milkQuantityController.text.trim())
                : null,
            petname: _descriptionController.text.trim(),
            vaccinated: false,
          ));
      _productBloc.add(
        ProductOwnerEvent.add(productdata: newPet.data.toJson(),type:"pet",entitytype: widget.entitytype,entityid:widget.entityid,isservice:widget.isService,origin:widget.origin),
      );
    }
  }
}
