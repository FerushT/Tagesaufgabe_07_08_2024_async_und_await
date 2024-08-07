// Der Output des folgenden Codes sollte folgendes beinhalten:

// Fetching data...
// Result: User data fetched
// Result: Product data fetched
// Result: Order data fetched
// Using fetched data for checkout...

// Verändere den Code so, dass er stimmt.

// Meine Lösung: Ich habe "async" in jede Funktion hinzugefügt.
// Meine Lösung: Ich habe in der void "async" und awaid hinzugefügt.

Future<String> fetchUserData() async {
  return Future.delayed(Duration(seconds: 2), () {
    return 'User data fetched';
  });
}

Future<String> fetchProductData() async {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Product data fetched';
  });
}

Future<String> fetchOrderData() async {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Order data fetched';
  });
}

void main() async {
  print('Fetching data...');
  final userData = await fetchUserData();
  print('Result: $userData');
  final productData = await fetchProductData();
  print('Result: $productData');
  final orderData = await fetchOrderData();
  print('Result: $orderData');

  print("Using fetched data for checkout...");
}
