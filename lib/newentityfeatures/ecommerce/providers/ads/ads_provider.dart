class AdsProvider {
  Future<List> fetchAds() async {
    await Future.delayed(Duration(seconds: 2));
    return adsData;
  }
}

const adsData = [
  {
    'imagepath':
        'https://wordstream-files-prod.s3.amazonaws.com/s3fs-public/images/media/images/persuasive-ads-coca-cola.jpg',
    'message': 'Hello World',
    'lm': {
      'phone': ['+1 571 203 41400'],
      'servicetype': ['Type 1'],
      'address': '5650 Dunster ct',
      'email': 'email@test.com',
      'photo1':
          'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg',
      'servicename': 'Service NAME',
      'timeinfo': 'TIME INFO',
      'serviceid': '1123',
      'ratingcount': 4,
      'totalratings': 12,
      'hasapt': true,
      'hasadhoctrips': false,
      'hasecom': false,
      'hasproductcatalog': false,
      'lati': 3.4,
      'longi': 41.2,
    },
    'lpd': null,
  },
  {
    'imagepath':
        'https://www.adweek.com/wp-content/uploads/2019/09/spotify-80s-ads-2019.jpg',
    'message': 'Hello World',
    'lm': {
      'phone': ['+1 571 203 41400'],
      'servicetype': ['Type 1'],
      'address': '5650 Dunster ct',
      'email': 'email@test.com',
      'photo1':
          'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg',
      'servicename': 'Service NAME',
      'timeinfo': 'TIME INFO',
      'serviceid': '1123',
      'ratingcount': 4,
      'totalratings': 12,
      'hasapt': true,
      'hasadhoctrips': false,
      'hasecom': false,
      'hasproductcatalog': false,
      'lati': 3.4,
      'longi': 41.2,
    },
    'lpd': null,
  },
  {
    'imagepath':
        'http://www.yookalabs.com/wp-content/uploads/2019/06/guide-to-facebook-advertising-850x470-c-1.png',
    'message': 'Hello World',
    'lm': {
      'phone': ['+1 571 203 41400'],
      'servicetype': ['Type 1'],
      'address': '5650 Dunster ct',
      'email': 'email@test.com',
      'photo1':
          'https://media.wired.com/photos/598e35fb99d76447c4eb1f28/master/pass/phonepicutres-TA.jpg',
      'servicename': 'Service NAME',
      'timeinfo': 'TIME INFO',
      'serviceid': '1123',
      'ratingcount': 4,
      'totalratings': 12,
      'hasapt': true,
      'hasadhoctrips': false,
      'hasecom': false,
      'hasproductcatalog': false,
      'lati': 3.4,
      'longi': 41.2,
    },
    'lpd': null,
    // {
    //   'id': '',
    //   'title': '',
    //   'tileimage': '',
    //   'reqqty': '',
    //   'isvegetarian': '',
    //   'spicetype': '',
    //   'ispackage': '',
    //   'unitmeasure': '',
    //   'origprice': '',
    //   'discountedprice': '',
    //   'varianttype': '',
    //   'packdata': '',
    //   'contenttype': '',
    // },
  }
];
