import 'package:cloud_firestore/cloud_firestore.dart';

class CartProvider {
  fetchCart() async {
    return {
      'custaddress': null,
      'customerid': '231',
      'custuserid': '4123',
      'custname': 'Testing',
      'orderdate': Timestamp.now(),
      'productlist': [
        for (int i = 1; i < 3; i++)
          {
            'id': '21esad$i',
            'productid': '41234$i',
            'itemid': 'dawdwa1$i',
            'tileimage':
                'https://5.imimg.com/data5/CH/WD/MY-30771967/school-bag-500x500.jpg',
            'title': 'School Bag $i',
            'unit': 'bag',
            'unitprice': '\$21.0',
            'qty': 1.0,
            'price': 21.0,
            'discountedprice': 21.0,
            'taxid': '12adkawok13$i',
            'totalprice': 21,
          },
      ],
      'advanceamount': 5.0,
      'totaltax': 1.0,
      'totalcalculatedprice': 21 * 4 + 1.0 + 5.0,
      'extradiscount': 0,
      'askedprice': 21 * 4,
      'orderstate': 'cart',
      'serviceproviderid': 'I12312',
      'custphonenum': '2412314',
      'id': 'dwd2faw14123da1',
    };
  }
}
