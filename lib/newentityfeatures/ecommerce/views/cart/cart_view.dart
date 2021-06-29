import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/cart/cart_bloc.dart';
import '../../models/states/cart_state.dart';

class CartView extends StatefulWidget {
  final int popsCount;
  CartView({Key key, this.popsCount: 4}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  CartBloc _bloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _bloc = context.read<CartBloc>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            if (state.cart.id != null && !state.loading) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Successfully checked out your order !'),
                  backgroundColor: Colors.green,
                ),
              );
              for (int i = 0; i < widget.popsCount; i++)
                Navigator.of(context).pop();
            }
            if (state.hasError && !state.loading) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error ?? 'An error occurred !'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) => Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0,
                child: ListView(
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
                          'CART',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Container(
                          width: 32,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
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
                            padding: const EdgeInsets.all(12.0),
                            width:
                                MediaQuery.of(context).size.width - 24.0 - 32.0,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          item.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
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
                                                      fontWeight:
                                                          FontWeight.w600),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4),
                                              child: !(item.unit?.isEmpty ??
                                                      true)
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
                                                              .toStringAsFixed(
                                                                  1),
                                                        ),
                                                      ),
                                                    )
                                                  : Row(
                                                      children: [
                                                        InkWell(
                                                          onTap: () =>
                                                              _bloc.add(
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
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .subtitle1
                                                                .copyWith(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          onTap: () =>
                                                              _bloc.add(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  '\$' +
                                      (state.cart.askedprice
                                              ?.toStringAsFixed(2) ??
                                          '0.00'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  '\$' +
                                      (state.cart.advanceamount
                                              ?.toStringAsFixed(2) ??
                                          '0.00'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  '\$' +
                                      (state.cart.totaltax
                                              ?.toStringAsFixed(2) ??
                                          '0.00'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Text(
                                  '\$' +
                                      (state.cart.totalcalculatedprice
                                              ?.toStringAsFixed(2) ??
                                          '0.00'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                          InkWell(
                            onTap: declareOrder,
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width - 32.0 - 24,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Text(
                                'CHECKOUT',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
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
              if (state.loading ?? false)
                Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    color: Color(0x50000000),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void declareOrder() async {
    context.read<CartBloc>().add(
          CartCheckout(),
        );
  }
}
