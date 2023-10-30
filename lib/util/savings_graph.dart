import 'package:flutter/material.dart';
import 'package:flutter_management_dashboard/consts/palette.dart';
import 'package:flutter_management_dashboard/util/progress_bar.dart';

class SavingsGraph extends StatelessWidget {
  const SavingsGraph({super.key});

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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Savings',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Icon(
                Icons.more_horiz_rounded,
                color: Colors.grey,
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                '\$406.27',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Chip(
                label: Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      size: 15,
                      color: Colors.green,
                    ),
                    Text(
                      '8.2%',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                backgroundColor: Palette.bgreen,
              ),
            ],
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '+ \$33.3',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' than last month',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "DreamStudio",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$251.9',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$750',
                          style: TextStyle(color: Palette.backgroundGrey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 40,
                max: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Education",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$183.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$200',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 85,
                max: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'DreamStudio',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '\$30.8',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '/\$150',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const ProgressBar(
                current: 20,
                max: 100,
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}