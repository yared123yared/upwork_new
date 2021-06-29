import 'package:complex/newentityfeatures/ecommerce-admin/models/vendor.dart';
import 'package:flutter/material.dart';

class VendorDetailsView extends StatefulWidget {
  final VendorModel vendor;
  VendorDetailsView({Key key, this.vendor}) : super(key: key);

  @override
  _VendorDetailsViewState createState() => _VendorDetailsViewState();
}

class _VendorDetailsViewState extends State<VendorDetailsView> {
  VendorModel vendor;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    vendor = widget.vendor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      vendor.vendorId != null
                          ? 'Vendor Details'
                          : 'Register Vendor',
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    Container(width: 40),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFFF1F1F1),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    initialValue: vendor.name ?? '',
                    onChanged: (_) => vendor.name = _,
                    validator: (_) =>
                        _.isEmpty ? 'This field is required' : null,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      border: InputBorder.none,
                      labelText: 'Vendor Name',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFFF1F1F1),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    initialValue: vendor.personName ?? '',
                    onChanged: (_) => vendor.personName = _,
                    validator: (_) =>
                        _.isEmpty ? 'This field is required' : null,
                    decoration: InputDecoration(
                      icon: Icon(Icons.contact_mail),
                      border: InputBorder.none,
                      labelText: 'Contact Person Name',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFFF1F1F1),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    initialValue: vendor.contact ?? '',
                    onChanged: (_) => vendor.contact = _,
                    validator: (_) =>
                        _.isEmpty ? 'This field is required' : null,
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone),
                      border: InputBorder.none,
                      labelText: 'Contact',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFFF1F1F1),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    initialValue: vendor.email ?? '',
                    onChanged: (_) => vendor.email = _,
                    validator: (_) =>
                        _.isEmpty ? 'This field is required' : null,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email),
                      border: InputBorder.none,
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                  color: Color(0xFFF1F1F1),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    initialValue: vendor.address ?? '',
                    onChanged: (_) => vendor.address = _,
                    validator: (_) =>
                        _.isEmpty ? 'This field is required' : null,
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_pin),
                      border: InputBorder.none,
                      labelText: 'Address',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 8,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Select Services',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    for (String service in [
                      'Delivery',
                      'Remote Trip',
                      'Ecom',
                    ])
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(0xFF707070),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(service),
                            Checkbox(
                              value:
                                  vendor.services?.contains(service) ?? false,
                              onChanged: (val) {
                                if (vendor.services == null)
                                  vendor.services = [];
                                setState(() => val
                                    ? vendor.services.add(service)
                                    : vendor.services.remove(service));
                              },
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              if (vendor.vendorId == null)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
