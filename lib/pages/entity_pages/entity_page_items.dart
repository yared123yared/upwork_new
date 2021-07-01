import 'package:complex/common/widgets/custom_grid.dart';
import 'package:complex/pages/entity_pages/dynamicentitystate.dart';
import 'package:flutter/material.dart';

class EntityPageItems extends StatelessWidget {
  final EntityRoleState entityRoleState;
  EntityPageItems({@required this.entityRoleState});

  Widget toPageState(BuildContext context, DynamicEntityPageState pageState) {
    Widget _stateWidget;
    print("PAGE STATE: $pageState");
    switch (pageState) {
      case DynamicEntityPageState.SetupPanel:
        if (entityRoleState.setupPanel != null &&
            entityRoleState.setupPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Setup',
            customGridList: entityRoleState.setupPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }
        break;
      case DynamicEntityPageState.NewForms:
        if (entityRoleState.newformpanel != null &&
            entityRoleState.newformpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'NEWFORM',
            customGridList: entityRoleState.newformpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }
        break;
      case DynamicEntityPageState.NewForms:
        if (entityRoleState.newformpanel != null &&
            entityRoleState.newformpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'NewTripForm',
            customGridList: entityRoleState.newformpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }
        break;

      case DynamicEntityPageState.SelfInformationAlert:
        if (entityRoleState.selfalertInfo != null &&
            entityRoleState.selfalertInfo.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Self Information',
            customGridList: entityRoleState.selfalertInfo
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.SelfInformationOrderAndApt:
        if (entityRoleState.selforderandappointmentInfo != null &&
            entityRoleState.selforderandappointmentInfo.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Self Information',
            customGridList: entityRoleState.selforderandappointmentInfo
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;

      case DynamicEntityPageState.AcademicManager:
        if (entityRoleState.academicManagerPanel != null &&
            entityRoleState.academicManagerPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Academic',
            customGridList: entityRoleState.academicManagerPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;

      case DynamicEntityPageState.Academic:
        if (entityRoleState.academicPanel != null &&
            entityRoleState.academicPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Academic',
            customGridList: entityRoleState.academicPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      /*
      case DynamicEntityPageState.ActiveSessions:
        _stateWidget = const SizedBox.shrink();
        break;

         */
      case DynamicEntityPageState.FeesPayment:
        if (entityRoleState.feesPaymentPanel != null &&
            entityRoleState.feesPaymentPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Fees and Payment',
            customGridList: entityRoleState.feesPaymentPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.StaffPanel:
        if (entityRoleState.staffPanel != null &&
            entityRoleState.staffPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Staff',
            customGridList: entityRoleState.staffPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.SecurityPanel:
        if (entityRoleState.securityPanel != null &&
            entityRoleState.securityPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Security',
            customGridList: entityRoleState.securityPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.EndUser:
        if (entityRoleState.enduserpanel != null &&
            entityRoleState.enduserpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'EndUser',
            customGridList: entityRoleState.enduserpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.EcomPanel:
        if (entityRoleState.ecomPanel != null &&
            entityRoleState.ecomPanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Product And Orders',
            customGridList: entityRoleState.ecomPanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.brokerpanel:
        if (entityRoleState.brokerpanel != null &&
            entityRoleState.brokerpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Add Vehicle/RealEstate',
            customGridList: entityRoleState.brokerpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.userclassifiedpanel:
        if (entityRoleState.userclassifiedpanel != null &&
            entityRoleState.userclassifiedpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Create Classified Ads',
            customGridList: entityRoleState.userclassifiedpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;
      case DynamicEntityPageState.productpanel:
        if (entityRoleState.productpanel.length > 0) {
          _stateWidget = CustomGridPanel(
            title: 'Product Category',
            customGridList: entityRoleState.productpanel
                .map((grid) => UiSchoolHandler.toTopGrid(grid, context))
                .toList(),
          );
        } else {
          _stateWidget = const SizedBox.shrink();
        }

        break;

      case DynamicEntityPageState.SetupPanelComplex:
        // TODO: Handle this case.
        break;
      case DynamicEntityPageState.EndUserComplex:
        // TODO: Handle this case.
        break;
      case DynamicEntityPageState.AptPanel:
        // TODO: Handle this case.
        break;
      case DynamicEntityPageState.TripUserPanel:
        // TODO: Handle this case.
        break;
      case DynamicEntityPageState.TripManagerPanel:
        // TODO: Handle this case.
        break;
      case DynamicEntityPageState.TripStaffPanel:
        // TODO: Handle this case.
        break;
    }
    return _stateWidget;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: entityRoleState.pageState
                .map((state) => toPageState(context, state))
                .toList() ??
            [Text('error')],
      ),
    );
  }
}
