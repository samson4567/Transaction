class TransactionalModel {
  final String transact;
  final String date;
  final String amount;
  final String imagePath;

  TransactionalModel(
      {required this.date,
      required this.amount,
      required this.imagePath,
      required this.transact});
}

List<TransactionalModel> listOfTransactionModel = [
  TransactionalModel(
      amount: '13000',
      transact: 'Transfer Reverse',
      date: '234',
      imagePath: 'assets/images/back.png'),
  TransactionalModel(amount: '', date: '', imagePath: '', transact: ''),
];
