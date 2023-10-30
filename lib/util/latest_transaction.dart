import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';
import '../models/transaction_data.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Palette.whiteCard,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Transaction',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'view all',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: 16,
              columns: [
                DataColumn(
                  label: Row(
                    children: [
                      Checkbox(value: false, onChanged: (newValue) {}),
                      SizedBox(width: 8), // Space between checkbox and text
                      Text(
                        "To/From",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Description",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Amount",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Status",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Action",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
              rows: List.generate(
                transactionDataDetails.length,
                    (index) => recentFileDataRow(transactionDataDetails[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


DataRow recentFileDataRow(TransactionData transactionData) {
  bool checkboxValue = false;
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Checkbox(
              value: checkboxValue,
              onChanged: (newValue) {
                checkboxValue = newValue ?? false; // Update checkboxValue
              },
            ),
          // Add checkbox
            SizedBox(width: 12), // Space between checkbox and text
            const Icon(
              Icons.flutter_dash,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                transactionData.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          transactionData.date,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
      DataCell(
        Text(
          transactionData.description,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      DataCell(
        Text(
          transactionData.amount,
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
        ),
      ),
      DataCell(
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.green),
          ),
          child: Text(
            transactionData.status,
            style: const TextStyle(color: Colors.green, fontWeight: FontWeight.w700),
          ),
        ),
      ),
      const DataCell(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.link,
              color: Colors.grey,
            ),
            Icon(
              Icons.delete,
              color: Colors.grey,
            ),
            Icon(
              Icons.more_horiz_rounded,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    ],
  );
}
