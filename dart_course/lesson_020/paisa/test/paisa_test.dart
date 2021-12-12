import 'package:paisa/paisa.dart';
import 'package:test/test.dart';

void main() {
  test('Testing Paisa constructor', () async {
    final paisa = Paisa(amount: 20, currency: 'USD');
    expect(paisa.amount, 20);
    expect(paisa.currency, 'USD');
  });

  test('Testing Paisa equality Operator', () async {
    final paisa1 = Paisa(amount: 20, currency: 'USD');
    final paisa2 = Paisa(amount: 20, currency: 'USD');
    final paisa3 = Paisa(amount: 30, currency: 'AFN');
    expect(paisa1 == paisa2, true);
    expect(paisa2 == paisa3, false);
  });

  test('Testing Paisa + Operator', () async {
    final paisa1 = Paisa(amount: 20, currency: 'USD');
    final paisa2 = Paisa(amount: 20, currency: 'USD');
    expect(paisa1 + paisa2, Paisa(amount: 40, currency: 'USD'));
  });

  test('Testing Paisa + Operator', () async {
    final paisa1 = Paisa(amount: 20, currency: 'USD');
    final paisa2 = Paisa(amount: 20, currency: 'USD');
    expect(paisa1 + paisa2, Paisa(amount: 40, currency: 'USD'));
  });
}
