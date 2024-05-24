class TransactionItemModel {
  final String title, date, amount;
  final bool isIncome;

  const TransactionItemModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isIncome});
}
