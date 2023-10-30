class TransactionData {
  final bool checked;
  final String title;
  final String date;
  final String description;
  final String amount;
  final String status;

  TransactionData({
    this.checked = false,
    required this.title,
    required this.date,
    required this.description,
    required this.amount,
    required this.status,
  });
}

List transactionDataDetails = [
  TransactionData(
    title: 'Elevate Agency',
    date: '2 Oct 2023',
    description: 'Monthly salary',
    amount: '+\$1500.0',
    status: 'Success',
  ),
  TransactionData(
    title: 'Zephyr',
    date: '10 Nov 2023',
    description: 'Monthly salary',
    amount: '+\$2100.0',
    status: 'Success',
  ),
  TransactionData(
    title: 'Redvey',
    date: '11 Oct 2023',
    description: 'Monthly salary',
    amount: '+\$9000.0',
    status: 'Success',
  ),
  TransactionData(
    title: 'Titanio',
    date: '12 Oct 2023',
    description: 'Monthly salary',
    amount: '+\$91000.0',
    status: 'Success',
  ),
];