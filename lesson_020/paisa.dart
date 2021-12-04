class Paisa {
  final double amount;
  final String? currency;
  const Paisa({this.amount = 0, this.currency});

  bool operator ==(Object other) {
    return (other is Paisa) &&
        other.amount == amount &&
        other.currency == currency;
  }

  bool operator >=(Object other) {
    return (other is Paisa) &&
        amount >= other.amount &&
        other.currency == currency;
  }

  bool operator >(Object other) {
    return (other is Paisa) &&
        amount > other.amount &&
        other.currency == currency;
  }

  int get hashCode {
    return amount.hashCode ^ currency.hashCode;
  }

  Paisa operator +(Paisa other) {
    if (other.currency != currency) throw 'currency-not-match';
    return Paisa(amount: amount + other.amount, currency: currency);
  }

  @override
  String toString() {
    return "$amount $currency";
  }
}

void main() {
  final amount1 = Paisa(amount: 3000, currency: 'AFN');
  final amount2 = Paisa(amount: 2000, currency: 'AFN');
  print(amount1 + amount2);
}
