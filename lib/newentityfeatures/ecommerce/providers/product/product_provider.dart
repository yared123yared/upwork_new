import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';

class ProductProvider {
  Future<List> fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    return data['servicelistshop'];
  }

  Future<Map<String, dynamic>> fetchProductFilterResult(
      ProductFilterModel productFilterModel) async {
    final pageSize = 12; //! MAKE SURE TO USE THAT ON REPLACING DUMMY DATA
    final types = [
      'vehicle',
      'realestate',
      'pet',
      'job',
      'package',
    ];
    await Future.delayed(Duration(seconds: 1));
    return Map<String, dynamic>.from({
      'totalcount': 57,
      'serviceproviderid': '12312',
      'docwithdata1': [
        for (int i = 0; i < 10; i++)
          {
            'id': '123123',
            'title': 'Product 1',
            'tileimage':
                'https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg',
            'reqqty': true,
            'isvegetarian': false,
            'spicetype': 0,
            'ispackage': true,
            'unitmeasure': '123 x 123',
            'origprice': 23.0,
            'discountedprice': 20.0,
            'varianttype': 'normale',
            'packdata': [
              {
                'itemid': '1233',
                'desc': 'AWDAD',
                'origprice': 23.90,
                'discountedprice': 20.10,
              }
            ],
            'contenttype': 'json :)',
          },
      ],
      'docwithdata2': [
        for (int i = 0; i < 10; i++)
          {
            'productid': Random().nextInt(2340).toString().toString(),
            'title': 'CUSTOMER SUPPORT PFFICER',
            'companyname': 'Company Name',
            'companyicon':
                'https://logos-download.com/wp-content/uploads/2016/02/Microsoft_box.png',
            'salaryrange': '(10,000 to  15,000)',
            'addressarea': {
              'id': '1123',
              'country': 'India',
              'state': 'Delhi',
              'district': 'Newcastle',
              'village': 'Calabasas',
              'areaname': 'Homko',
              'addressinfo': '21344',
              'lati': 213.4,
              'longi': 441.2,
            },
            'jobtype': 'Part Time',
            'postedon':
                Timestamp.fromDate(DateTime.now().subtract(Duration(days: 3))),
          },
      ],
      'docwithdata3': [
        for (int i = 0; i < 10; i++)
          {
            'productid': 'productid',
            'listingtype': 'realestate',
            'propertytype': 'Appartment',
            'numbedroom': 2,
            'numbathroom': 3,
            'sharingallowed': true,
            'sqrfootage': 1200,
            'price': 150000.0,
            'tileimage':
                'https://images.adsttc.com/media/images/5ecd/d4ac/b357/65c6/7300/009d/large_jpg/02C.jpg?1590547607',
            'postedon': Timestamp.fromDate(DateTime.now()),
            'addressarea': {
              'id': '1123',
              'country': 'India',
              'state': 'Delhi',
              'district': 'Newcastle',
              'village': 'Calabasas',
              'areaname': 'Homko',
              'addressinfo': '21344',
              'lati': 213.4,
              'longi': 441.2,
            },
            'floorNumber': i,
            'serviceproviderid': 'serviceproviderid',
          },
      ],
      'docwithdata4': [
        for (int i = 0; i < 10; i++)
          {
            'productid': 'productid',
            'title': 'Tesla Model S 2019',
            'vehicletype': 'Sports Car',
            'make': 'Tesla',
            'model': 'S',
            'yearmade': 2019,
            'milage': 120,
            'price': 50000.0,
            'tileimage':
                'https://smartcdn.prod.postmedia.digital/driving/wp-content/uploads/2019/04/model-s-001.jpg?quality=100&strip=all',
            'postedon': Timestamp.fromDate(DateTime.now()),
            'addressarea': null,
            'serviceproviderid': 'serviceproviderid',
          },
      ],
      'docwithdata5': [
        for (int i = 0; i < 10; i++)
          {
            'petclass': 'PETS',
            'name': 'Spike ${i + 1}',
            'breed': 'Breed',
            'gender': 'Male',
            'animalclass': 'DOG',
            'age': 4,
            'tileimage':
                'https://image.cnbcfm.com/api/v1/image/105992231-1561667465295gettyimages-521697453.jpeg?v=1561667497&w=1600&h=900',
            'price': 200.0,
            'postedon': Timestamp.fromDate(DateTime.now()),
            'addressarea': null,
            'serviceproviderid': '31231',
          },
      ],
      'pidlist': ['pid1', 'pid2'],
      'diminfo': [
        {
          'dimname': 'Brands',
          'fieldvalues': [
            {
              'fieldvalue': 'Apple',
              'count': 12,
            },
            {
              'fieldvalue': 'Microsoft',
              'count': 5,
            },
            {
              'fieldvalue': 'Samsung',
              'count': 20,
            },
          ],
        },
        {
          'dimname': 'Size',
          'fieldvalues': [
            {
              'fieldvalue': 'Small',
              'count': 10,
            },
            {
              'fieldvalue': 'Medium',
              'count': 2,
            },
            {
              'fieldvalue': 'Large',
              'count': 8,
            },
          ],
        },
      ],
      'catinfo': [
        {
          'category': 'Category 1',
          'pricerange': [100, 200],
          'priceareadependent': true,
          'iconpath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'imagepath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
          'childcategory': [
            {
              'category': 'Category 1 Sub 1',
              'pricerange': [100, 200],
              'priceareadependent': true,
              'iconpath':
                  'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
              'imagepath':
                  'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
              'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
              'childcategory': [],
            },
            {
              'category': 'Category 1 Sub 2',
              'pricerange': [100, 200],
              'priceareadependent': true,
              'iconpath':
                  'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
              'imagepath':
                  'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
              'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
              'childcategory': [
                {
                  'category': 'Category Sub 2 SubSub 1',
                  'pricerange': [100, 200],
                  'priceareadependent': true,
                  'iconpath':
                      'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
                  'imagepath':
                      'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
                  'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
                  'childcategory': [],
                },
              ],
            },
          ],
        },
        {
          'category': 'Category 2',
          'pricerange': [100, 200],
          'priceareadependent': true,
          'iconpath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'imagepath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
          'childcategory': [],
        },
        {
          'category': 'Category 3',
          'pricerange': [100, 400],
          'priceareadependent': true,
          'iconpath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'imagepath':
              'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
          'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
          'childcategory': [],
        },
      ],
      'topleveltiletype': types[Random().nextInt(types.length)],
      'hasmoreresults': true,
    });
  }

  Future<List<String>> fetchDistricts() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      'District 1',
      'District 2',
      'District 3',
      'District 4',
      'District 5',
    ];
  }

  Future<List<String>> fetchAreas() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      'Areas 1',
      'Areas 2',
      'Areas 3',
      'Areas 4',
      'Areas 5',
    ];
  }

  Future<List<String>> fetchStates() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      'State 1',
      'State 2',
      'State 3',
      'State 4',
      'State 5',
    ];
  }
}

const data = {
  "servicelistshop": [
    {
      "sectionname": "DAILY NEEDS",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "single",
      "ordernum": 1,
      "type": "shop",
      "servicetypelist": [
        {
          "servicetype": "GROCERY",
          "querystr": "GROCERY",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 2,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": "simple",
          "filterdata": {
            "depth": 2,
            "filterheading": ["myhead1", "myheade2"],
            "values": [
              {
                "value": "val1",
                "childvalues": ["val1child1", "val1child2"]
              },
              {
                "value": "val2",
                "childvalues": ["val2child1", "val2child2"]
              }
            ]
          }
        },
        {
          "servicetype": "FRUITS",
          "querystr": "FRUITS",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "VEGETABLE",
          "querystr": "VEGETABLE",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 3,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "MILK",
          "querystr": "MILK",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 4,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "RESTUARANT",
          "querystr": "RESTUARANT",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 5,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": "simple",
          "filterdata": {
            "depth": 2,
            "filterheading": ["myhead1", "myheade2"],
            "values": [
              {
                "value": "val1",
                "childvalues": ["val1child1", "val1child2"]
              },
              {
                "value": "val2",
                "childvalues": ["val2child1", "val2child2"]
              }
            ]
          }
        }
      ]
    },
    {
      "sectionname": "SHOPPING",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "single",
      "ordernum": 2,
      "type": "cathalog",
      "servicetypelist": [
        {
          "servicetype": "CLOTHES",
          "querystr": "CLOTHES",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "SINGLE",
          "ordernum": 1,
          "hasapt": false,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "COSMETICS",
          "querystr": "COSMETICS",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": false,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "TOYS",
          "querystr": "TOYS",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": false,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "PAINT/HARDWARE",
          "querystr": "PAINT/HARDWARE",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": false,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "MEDICINE",
          "querystr": "MEDICINE",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": false,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        }
      ]
    },
    {
      "sectionname": "HELP",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "single",
      "ordernum": 3,
      "type": "shop",
      "servicetypelist": [
        {
          "servicetype": "COOK",
          "querystr": "COOK",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "SINGLE",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "HOUSEHELP",
          "querystr": "HOUSEHELP",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "DRIVER",
          "querystr": "DRIVER",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "SECUIRTY",
          "querystr": "GROCERY",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        }
      ]
    },
    {
      "sectionname": "HOME REPAIRS",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "single",
      "ordernum": 1,
      "type": "shop",
      "servicetypelist": [
        {
          "servicetype": "ELECTRICIAN",
          "querystr": "ELECTRICIAN",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "SINGLE",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "PLUMBER",
          "querystr": "PLUMBER",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "PAINTER",
          "querystr": "PAINTER",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "AIRCONDITIONER",
          "querystr": "AIRCONDITIONER",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "FRIDGE",
          "querystr": "FRIDGE",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "TV",
          "querystr": "TV",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        }
      ]
    },
    {
      "sectionname": "SERVICES",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "single",
      "ordernum": 2,
      "type": "shop",
      "servicetypelist": [
        {
          "servicetype": "BEAUTICIAN",
          "querystr": "BEAUTICIAN",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "SINGLE",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "DOCTOR",
          "querystr": "DOCTOR",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "BARBER",
          "querystr": "BARBER",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        },
        {
          "servicetype": "TUTION",
          "querystr": "TUTION",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": "simple",
          "filter": {
            "depth": 2,
            "filterheading": ["myhead1", "myheade2"],
            "values": [
              {
                "value": "val1",
                "childvalues": ["val1child1", "val1child2"]
              },
              {
                "value": "val2",
                "childvalues": ["val2child1", "val2child2"]
              }
            ]
          }
        },
        {
          "servicetype": "GYM",
          "querystr": "GYM",
          "icon":
              "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
          "displaylist": "single",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": false,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null
        }
      ]
    },
    {
      "sectionname": "RealEstate",
      "icon":
          "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
      "displaylist": "double",
      "ordernum": 8,
      "type": "realestate",
      "servicetypelist": [
        {
          "servicetype": "Sale",
          "querystr": "Sale",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null,
          "childservicetype": [
            {
              "servicetype": "Houses",
              "querystr": "Houses",
              "icon":
                  "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
              "displaylist": "SINGLE",
              "ordernum": 2,
              "filtertype": null,
              "filter": null
            },
            {
              "servicetype": "Flats",
              "querystr": "Flats",
              "icon":
                  "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
              "displaylist": "single",
              "ordernum": 1,
              "hasapt": true,
              "hascall": true,
              "hasshopping": false,
              "haschat": true,
              "hasdirections": true,
              "defaultclick": "apt",
              "filtertype": null,
              "filter": null
            }
          ]
        },
        {
          "servicetype": "Roofing",
          "querystr": "Roofing",
          "ordernum": 1,
          "hasapt": true,
          "hascall": true,
          "hasshopping": true,
          "haschat": true,
          "hasdirections": true,
          "defaultclick": "apt",
          "filtertype": null,
          "filter": null,
          "childservicetype": [
            {
              "servicetype": "Houses",
              "querystr": "Houses",
              "icon":
                  "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
              "displaylist": "SINGLE",
              "ordernum": 2,
              "filtertype": null,
              "filter": null
            },
            {
              "servicetype": "Flats",
              "querystr": "Flats",
              "icon":
                  "https://www.fortisrealestate.com.au/wp-content/uploads/2020/06/reasons-to-hire-a-real-estate-agent.jpg",
              "displaylist": "single",
              "ordernum": 1,
              "hasapt": true,
              "hascall": true,
              "hasshopping": false,
              "haschat": true,
              "hasdirections": true,
              "defaultclick": "apt",
              "filtertype": null,
              "filter": null
            }
          ]
        }
      ]
    }
  ]
};
