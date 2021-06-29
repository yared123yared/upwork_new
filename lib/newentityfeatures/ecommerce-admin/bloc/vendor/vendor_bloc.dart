import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/ecommerce-admin/repositories/vendor/vendor_repository.dart';
import 'vendor_state.dart';

class VendorBloc extends Bloc<VendorEvent, VendorState> {
  final _vendorRepository = VendorRepository();
  VendorBloc({VendorState initialState}) : super(initialState ?? VendorState());

  @override
  Stream<VendorState> mapEventToState(VendorEvent event) async* {
    if (event is FetchedVendorsEvent) {
      yield state.copyWith(loading: true);
      final vendors = await _vendorRepository.getVendors();
      yield state.copyWith(
        loading: false,
        vendors: vendors,
      );
    }
  }
}
