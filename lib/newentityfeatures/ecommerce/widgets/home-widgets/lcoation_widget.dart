import 'package:complex/newentityfeatures/ecommerce/bloc/product/product_bloc.dart';
import 'package:complex/newentityfeatures/shared-ecommerce/widgets/error-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key key}) : super(key: key);

  showLocationDialog() {
    showDialog(
      context: Get.context,
      builder: (context) {
        return AlertDialog(
          title: Text('Enter your Address:'),
          content: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (state.locationLoading) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 64,
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              if (state.addressHasError) {
                return Container(
                  height: 128,
                  padding: EdgeInsets.only(top: 16),
                  child: EcommerceErrorWidget(
                    errorText: 'Unknown Error',
                  ),
                );
              }

              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    initialValue: 'India',
                    enabled: false,
                    decoration: InputDecoration(
                      labelText: 'Country',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      suffix: Icon(
                        Icons.location_city_rounded,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  DropdownButtonFormField(
                    onChanged: (e) => Get.context.read<ProductBloc>().add(
                          UpdatedState(e),
                        ),
                    items: state.states
                        .map(
                          (e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ),
                        )
                        .toList(),
                    value: state.state,
                    decoration: InputDecoration(
                      labelText: 'State',
                      hintText: 'Pelase specify your state',
                      border: OutlineInputBorder(),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    ),
                    icon: Icon(
                      Icons.location_city_rounded,
                    ),
                  ),
                  if (state.state != null) SizedBox(height: 8),
                  if (state.state != null)
                    DropdownButtonFormField(
                      onChanged: (e) => Get.context.read<ProductBloc>().add(
                            UpdatedDistrict(e),
                          ),
                      icon: Icon(
                        Icons.location_city_rounded,
                      ),
                      value: state.district,
                      isExpanded: false,
                      items: state.districts
                              ?.map(
                                (e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ),
                              )
                              ?.toList() ??
                          [],
                      decoration: InputDecoration(
                        labelText: 'District',
                        hintText: 'Pelase specify your district',
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      ),
                    ),
                  if (state.district != null) SizedBox(height: 8),
                  if (state.district != null)
                    MultiSelectDialogField(
                      items: state.areas
                              ?.map((e) => MultiSelectItem(e, e))
                              ?.toList() ??
                          [],
                      buttonIcon: Icon(
                        Icons.location_pin,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                      ),
                      buttonText: Text('Select Area'),
                      listType: MultiSelectListType.LIST,
                      title: Text('Pelase specify your areas'),
                      onConfirm: (values) {
                        Get.context.read<ProductBloc>().add(
                              UpdatedArea(List<String>.from(values)),
                            );
                      },
                    ),
                ],
              );
            },
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.context.read<ProductBloc>().add(
          FetchedStates(),
        );

    return GestureDetector(
      onTap: showLocationDialog,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 26,
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              'Click here to enter you location',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
