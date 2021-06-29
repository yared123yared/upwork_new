import '../../models/vendor.dart';

class VendorState {
  bool loading;
  bool hasError;
  String errorText;
  List<VendorModel> vendors;
  VendorState({
    this.loading: false,
    this.hasError: false,
    this.errorText,
    this.vendors,
  });

  VendorState copyWith({
    bool loading,
    bool hasError: false,
    String errorText,
    List<VendorModel> vendors,
  }) {
    return VendorState(
      loading: loading ?? this.loading,
      hasError: hasError ?? this.hasError,
      errorText: errorText ?? this.errorText,
      vendors: vendors ?? this.vendors,
    );
  }
}

abstract class VendorEvent {}

class FetchedVendorsEvent extends VendorEvent {}
