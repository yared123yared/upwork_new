class CategoriesProvider {
  Future<List> fetchCategories(int startIndex, int limit) async {
    await Future.delayed(Duration(seconds: 1));
    return [...data].sublist(startIndex, startIndex + limit);
  }
}

const data = [
  {
    'category': 'Shoes',
    'pricerange': [100, 200],
    'priceareadependent': true,
    'iconpath':
        'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
    'imagepath':
        'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
    'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
    'childcategory': [
      {
        'category': 'Category',
        'pricerange': [100, 200],
        'priceareadependent': true,
        'iconpath':
            'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
        'imagepath':
            'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
        'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
        'childcategory': [
          {
            'category': 'Category',
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
      {
        'category': 'Category',
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
  {
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
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
    'category': 'Category',
    'pricerange': [100, 200],
    'priceareadependent': true,
    'iconpath':
        'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
    'imagepath':
        'https://www.target.com.au/medias/static_content/product/images/full/07/18/A1390718.jpg?impolicy=product_portrait_hero',
    'dynamicpropertiesidentifier': 'dynamicpropertiesidentifier',
    'childcategory': [],
  },
];
