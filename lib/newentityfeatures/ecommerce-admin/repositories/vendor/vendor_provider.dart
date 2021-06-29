class VendorProvider {
  Future<List> fetchVendors() async {
    await Future.delayed(Duration(seconds: 1));

    return [
      {
        'vendorId': 'DA2DF13123',
        'name': 'One Vendor',
        'image':
            'https://image.shutterstock.com/image-photo/vendor-concept-wooden-letters-on-260nw-709623133.jpg',
        'personName': 'Rajesh',
        'contact': '+1 312 400 1300',
        'email': 'rajesh@email.com',
        'address': '123 Jump street',
        'services': ['Delivery'],
      },
      {
        'vendorId': 'DA2DF43123',
        'name': 'Vendor Two',
        'image':
            'https://image.shutterstock.com/image-photo/vendor-concept-wooden-letters-on-260nw-709623133.jpg',
        'personName': 'Swati',
        'contact': '+1 312 400 1300',
        'email': 'swati@email.com',
        'address': '124 Jump street',
        'services': ['Remote Trip'],
      },
      {
        'vendorId': 'DA2DF13125',
        'name': 'Three Vendor',
        'image':
            'https://image.shutterstock.com/image-photo/vendor-concept-wooden-letters-on-260nw-709623133.jpg',
        'personName': 'Abderrahmane',
        'contact': '+1 312 400 1300',
        'email': 'abdou@email.com',
        'address': '125 Jump street',
        'services': ['Ecom', 'Delivery'],
      },
    ];
  }
}
