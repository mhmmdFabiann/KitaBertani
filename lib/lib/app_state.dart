import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartProduct = prefs
              .getStringList('ff_cartProduct')
              ?.map((path) => path.ref)
              .toList() ??
          _cartProduct;
    });
    _safeInit(() {
      _cartSummary =
          prefs.getStringList('ff_cartSummary')?.map(double.parse).toList() ??
              _cartSummary;
    });
    _safeInit(() {
      _cartShop = prefs
              .getStringList('ff_cartShop')
              ?.map((path) => path.ref)
              .toList() ??
          _cartShop;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _SearchActive = false;
  bool get SearchActive => _SearchActive;
  set SearchActive(bool value) {
    _SearchActive = value;
  }

  List<DocumentReference> _cartProduct = [];
  List<DocumentReference> get cartProduct => _cartProduct;
  set cartProduct(List<DocumentReference> value) {
    _cartProduct = value;
    prefs.setStringList('ff_cartProduct', value.map((x) => x.path).toList());
  }

  void addToCartProduct(DocumentReference value) {
    cartProduct.add(value);
    prefs.setStringList(
        'ff_cartProduct', _cartProduct.map((x) => x.path).toList());
  }

  void removeFromCartProduct(DocumentReference value) {
    cartProduct.remove(value);
    prefs.setStringList(
        'ff_cartProduct', _cartProduct.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartProduct(int index) {
    cartProduct.removeAt(index);
    prefs.setStringList(
        'ff_cartProduct', _cartProduct.map((x) => x.path).toList());
  }

  void updateCartProductAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cartProduct[index] = updateFn(_cartProduct[index]);
    prefs.setStringList(
        'ff_cartProduct', _cartProduct.map((x) => x.path).toList());
  }

  void insertAtIndexInCartProduct(int index, DocumentReference value) {
    cartProduct.insert(index, value);
    prefs.setStringList(
        'ff_cartProduct', _cartProduct.map((x) => x.path).toList());
  }

  List<double> _cartSummary = [];
  List<double> get cartSummary => _cartSummary;
  set cartSummary(List<double> value) {
    _cartSummary = value;
    prefs.setStringList(
        'ff_cartSummary', value.map((x) => x.toString()).toList());
  }

  void addToCartSummary(double value) {
    cartSummary.add(value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeFromCartSummary(double value) {
    cartSummary.remove(value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartSummary(int index) {
    cartSummary.removeAt(index);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void updateCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartSummary[index] = updateFn(_cartSummary[index]);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartSummary(int index, double value) {
    cartSummary.insert(index, value);
    prefs.setStringList(
        'ff_cartSummary', _cartSummary.map((x) => x.toString()).toList());
  }

  List<DocumentReference> _cartShop = [];
  List<DocumentReference> get cartShop => _cartShop;
  set cartShop(List<DocumentReference> value) {
    _cartShop = value;
    prefs.setStringList('ff_cartShop', value.map((x) => x.path).toList());
  }

  void addToCartShop(DocumentReference value) {
    cartShop.add(value);
    prefs.setStringList('ff_cartShop', _cartShop.map((x) => x.path).toList());
  }

  void removeFromCartShop(DocumentReference value) {
    cartShop.remove(value);
    prefs.setStringList('ff_cartShop', _cartShop.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartShop(int index) {
    cartShop.removeAt(index);
    prefs.setStringList('ff_cartShop', _cartShop.map((x) => x.path).toList());
  }

  void updateCartShopAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cartShop[index] = updateFn(_cartShop[index]);
    prefs.setStringList('ff_cartShop', _cartShop.map((x) => x.path).toList());
  }

  void insertAtIndexInCartShop(int index, DocumentReference value) {
    cartShop.insert(index, value);
    prefs.setStringList('ff_cartShop', _cartShop.map((x) => x.path).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
