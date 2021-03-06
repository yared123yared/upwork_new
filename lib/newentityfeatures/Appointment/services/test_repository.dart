//class ProductRepository {
//  final productCollection = Firestore().collection("products");
//
//  /// Get all the Products
//  Stream<List<ProductModel>> streamProducts() {
//    try {
//      return productCollection.where("active", isEqualTo: true).snapshots().map(
//              (list) => list.documents
//              .map((doc) => ProductModel.fromFirestore(doc))
//              .toList());
//    } on PlatformException catch (e) {
//      print(e.message);
//      return null;
//    }
//  }
//
//  ///
//  /// SAVE IMAGES
//  ///
//
//  Future saveImage(Asset asset) async {
//    var uuid = Uuid();
//    var imageName = uuid.v4();
//
//    String path = asset.name;
//    String _extension = p.extension(path).split('?').first;
//
//    ByteData byteData = await asset.getThumbByteData(1080, 1080, quality: 70);
//    List<int> imageData = byteData.buffer.asUint8List();
//    StorageReference ref = FirebaseStorage.instance
//        .ref()
//        .child('$imageName${_extension.toLowerCase()}');
//    StorageUploadTask uploadTask = ref.putData(imageData);
//
//    return await (await uploadTask.onComplete).ref.getDownloadURL();
//  }
//
//  ///
//  ///
//  ///   ADD Product TO FIRESTORE
//  ///
//  ///
//
//  Future<void> addProduct(ProductModel product) async {
//    try {
//      List images = [];
//      for (var item in product.images) {
//        var url = await saveImage(item);
//        images.add(url);
//      }
//      print(images);
//      await productCollection.add({
//        ...product.toMap(),
//        "images": images,
//        "createdAt": FieldValue.serverTimestamp(),
//        "updatedAt": FieldValue.serverTimestamp()
//      });
//    } on PlatformException catch (e) {
//      print(e.message);
//      return null;
//    }
//  }
//
//  Future<void> editProduct(ProductModel product, oldImages) async {
//    try {
//      List images = [];
//      for (var item in product.images) {
//        var url = await saveImage(item);
//        images.add(url);
//      }
//      await productCollection.document(product.productId).updateData({
//        ...product.toMap(),
//        "images": [...images, ...oldImages],
//        "updatedAt": FieldValue.serverTimestamp()
//      });
//    } on PlatformException catch (e) {
//      print(e.message);
//      return null;
//    }
//  }
//
//  Future<void> deleteProduct(String productId) async {
//    try {
//      await productCollection.document(productId).updateData(
//          {"active": false, "updatedAt": FieldValue.serverTimestamp()});
//    } on PlatformException catch (e) {
//      print(e.message);
//      return null;
//    }
//  }
//}
