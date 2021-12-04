class Paisa {
  final double amount;
  final String? currency;

  Paisa exchangeTo(String newCurrency, double exchangeRate) {
    return Paisa(
      amount: amount / exchangeRate,
      currency: newCurrency,
    );
  }

  Paisa copyWith({double? amount, String? currency}) {
    return Paisa(
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
    );
  }

  const Paisa({this.amount = 0, this.currency});

  @override
  String toString() {
    return "$amount $currency";
  }

  @override
  bool operator ==(Object other) {
    return (other is Paisa) &&
        amount == other.amount &&
        currency == other.currency;
  }

  bool operator <=(Object other) {
    return (other is Paisa) &&
        amount <= other.amount &&
        currency == other.currency;
  }

  bool operator <(Object other) {
    return (other is Paisa) &&
        amount < other.amount &&
        currency == other.currency;
  }

  bool operator >=(Object other) {
    return (other is Paisa) &&
        amount >= other.amount &&
        currency == other.currency;
  }

  bool operator >(Object other) {
    return (other is Paisa) &&
        amount > other.amount &&
        currency == other.currency;
  }

  Paisa operator +(Paisa other) {
    if (other.currency != currency) throw 'currency-not-match';
    return Paisa(
      amount: amount + other.amount,
      currency: currency,
    );
  }

  Paisa operator -(Paisa other) {
    if (other.currency != currency) throw 'currency-not-match';
    return Paisa(
      amount: amount - other.amount,
      currency: currency,
    );
  }

  Paisa operator *(Paisa other) {
    if (other.currency != currency) throw 'currency-not-match';
    return Paisa(
      amount: amount * other.amount,
      currency: currency,
    );
  }

  Paisa operator /(Paisa other) {
    if (other.currency != currency) throw 'currency-not-match';
    return Paisa(
      amount: amount + other.amount,
      currency: currency,
    );
  }

  @override
  int get hashCode => amount.hashCode ^ currency.hashCode;
}
