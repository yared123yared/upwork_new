import 'vendor_provider.dart';

import '../../models/vendor.dart';

class VendorRepository {
  final _vendorProvider = VendorProvider();

  Future<List<VendorModel>> getVendors() async {
    final vendorsRaw = await _vendorProvider.fetchVendors();
    return vendorsRaw.map((e) => VendorModel.fromMap(e)).toList();
  }
}
