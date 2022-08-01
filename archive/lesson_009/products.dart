import 'dart:convert';
import 'dart:io';

import '../lesson_007/get_user_input.dart';

const dbName = 'products.laams';
void main() {
  while (true) {
    var products = fetchProducts();
    String cmdMsg = 'Enter a command (add, list, update, get, delete, exit)';
    String command = getUserInput(cmdMsg);
    if (command == 'exit') break;
    if (command == 'add') {
      products = fetchProducts();
      var product = <String, dynamic>{};
      product['name'] = getUserInput<String>('Enter Product Name');
      product['price'] = getUserInput<double>('Enter Product Price');
      product['id'] = '${products.length + 1}';
      products.add(product);
      File(dbName).writeAsStringSync(jsonEncode(products));
    } else if (command == 'list') {
      products = fetchProducts();
      print('\n----------------------------------------------------------');
      if (products.isEmpty) print('No Products to show');
      for (var product in products) {
        print('''
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
        ''');
      }
      print('----------------------------------------------------------');
    } else if (command == 'update') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        var product = products.firstWhere((e) => e['id'] == productID);
        print('''

----------------------------------------------------------------------
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
----------------------------------------------------------------------
        ''');
        product['name'] = getUserInput<String>('Enter New Product Name');
        product['price'] = getUserInput<double>('Enter New Product Price');
        products.removeWhere((e) => e['id'] == productID);
        products.add(product);
        File(dbName).writeAsStringSync(jsonEncode(products));
      }
    } else if (command == 'get') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        var product = products.firstWhere((e) => e['id'] == productID);
        print('''

----------------------------------------------------------------------
ID:\t${product['id']}
Name:\t${product['name']}
Price:\t${product['price']}
----------------------------------------------------------------------
        ''');
      }
    } else if (command == 'delete') {
      products = fetchProducts();
      String productID = getUserInput<String>('Enter Product ID');
      List<String> ids = products.map((e) => e['id'].toString()).toList();
      if (!ids.contains(productID)) {
        print('Product with $productID ID does not exist');
      } else {
        products.removeWhere((e) => e['id'] == productID);
        File(dbName).writeAsStringSync(jsonEncode(products));
        print('Success fully delete the product with id $productID');
      }
    }
  }
}

List<Map<String, dynamic>> fetchProducts() {
  try {
    final data = File(dbName).readAsStringSync();
    return List<Map<String, dynamic>>.from(jsonDecode(data));
  } catch (e) {
    return [];
  }
}
