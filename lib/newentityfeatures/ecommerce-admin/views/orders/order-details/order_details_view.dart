import 'package:complex/newentityfeatures/ecommerce-admin/views/store-product/store_product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:complex/newentityfeatures/ecommerce/bloc/cart/cart_bloc.dart';
import 'package:complex/newentityfeatures/ecommerce/models/states/cart_state.dart';

class OrderDetailsView extends StatefulWidget {
  OrderDetailsView({Key key}) : super(key: key);

  @override
  _OrderDetailsViewState createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  CartBloc _bloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _bloc = context.read<CartBloc>();
    });
  }

  final modifiableStatuses = [
    'PENDING',
    'PROCESSING',
    'DELIVERING',
  ];
  final statuses = [
    'PENDING',
    'PROCESSING',
    'DELIVERING',
    'DELIVERED',
    'READY TO PICK',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) => ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'ORDER DETAILS',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Container(
                    width: 32,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            'Order Status: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            state.cart.orderstate,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.edit),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        String newStatus;
                        final _statusFormKey = GlobalKey<FormState>();
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Order Status'),
                            content: Form(
                              key: _statusFormKey,
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: 'New status',
                                ),
                                validator: (_) => _ != null
                                    ? null
                                    : 'Please enter the new status',
                                onChanged: (val) => newStatus = val,
                                items: statuses
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (!_statusFormKey.currentState.validate())
                                    return;

                                  _bloc.add(
                                    ChangedCartStatusEvent(newStatus),
                                  );
                                  Navigator.of(context).pop();
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).primaryColor,
                                  ),
                                ),
                                child: Text('Update'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x22000000),
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListView.builder(
                  itemCount: state.cart.productlist.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = state.cart.productlist[index];

                    return Container(
                      key: Key(item.id),
                      padding: const EdgeInsets.all(12.0),
                      width: MediaQuery.of(context).size.width - 24.0 - 32.0,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              item.tileimage,
                              width: 96,
                              height: 96,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    item.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(height: 4),
                                  // Text(
                                  //   'Description/Ingredients',
                                  //   style:
                                  //       Theme.of(context).textTheme.bodyText2,
                                  // ),
                                  // SizedBox(height: 4),
                                  // Text(
                                  //   'Qty: Large',
                                  //   style:
                                  //       Theme.of(context).textTheme.bodyText2,
                                  // ),
                                  SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        item.unitprice,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1
                                            .copyWith(
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 4),
                                        child: !modifiableStatuses
                                                .contains(state.cart.orderstate)
                                            ? Container(
                                                width: 64,
                                                height: 32,
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 4,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    item.qty.toStringAsFixed(1),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : !(item.unit?.isEmpty ?? true)
                                                ? Container(
                                                    width: 64,
                                                    height: 32,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical: 4,
                                                    ),
                                                    child: TextField(
                                                      onSubmitted: (val) =>
                                                          _bloc.add(
                                                        ChangedQuantityCartEvent(
                                                          double.tryParse(
                                                                  val) ??
                                                              item.qty,
                                                          item,
                                                        ),
                                                      ),
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      controller:
                                                          TextEditingController(
                                                        text: item.qty
                                                            .toStringAsFixed(1),
                                                      ),
                                                    ),
                                                  )
                                                : Row(
                                                    children: [
                                                      InkWell(
                                                        onTap: () => _bloc.add(
                                                          ChangedQuantityCartEvent(
                                                            item.qty - 1,
                                                            item,
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 32,
                                                        child: Text(
                                                          item.qty?.toStringAsFixed(
                                                                  0) ??
                                                              '0',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .subtitle1
                                                                  .copyWith(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () => _bloc.add(
                                                          ChangedQuantityCartEvent(
                                                            item.qty + 1,
                                                            item,
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 12),
              // -----------------------------------
              // CART FOOTER
              // -----------------------------------
              Container(
                width: MediaQuery.of(context).size.width - 32.0,
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount:',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            '\$' +
                                (state.cart.askedprice?.toStringAsFixed(2) ??
                                    '0.00'),
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Charge:',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            '\$' +
                                (state.cart.advanceamount?.toStringAsFixed(2) ??
                                    '0.00'),
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax:',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            '\$' +
                                (state.cart.totaltax?.toStringAsFixed(2) ??
                                    '0.00'),
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Text(
                            '\$' +
                                (state.cart.totalcalculatedprice
                                        ?.toStringAsFixed(2) ??
                                    '0.00'),
                            style:
                                Theme.of(context).textTheme.headline5.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    if (modifiableStatuses.contains(state.cart.orderstate))
                      InkWell(
                        child: Container(
                          width: MediaQuery.of(context).size.width - 32.0 - 24,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            state.cart.id != null
                                ? 'Update Order'
                                : 'Declare Order',
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: modifiableStatuses
              .contains(context.watch<CartBloc>().state.cart.orderstate)
          ? FloatingActionButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => BlocProvider<CartBloc>.value(
                    value: context.read<CartBloc>(),
                    child: StoreProductList(
                      hideCart: true,
                    ),
                  ),
                ),
              ),
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
