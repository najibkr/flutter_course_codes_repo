void main() {
  final mySalary = Money(200, 'AFN');
  final bonus = Money(50, 'USD');
  print(mySalary + bonus);
}

class Money {
  final double amount;
  final String currency;
  const Money(this.amount, this.currency);

  @override
  String toString() {
    return '$amount $currency';
  }

  Money operator +(Money other) {
    if (other.currency != currency) throw 'currency does not match';
    return Money(other.amount + amount, currency);
  }
}
