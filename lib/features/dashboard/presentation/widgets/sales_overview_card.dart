import 'package:flutter/material.dart';

class SalesOverviewCard extends StatelessWidget {
  final String totalSales;
  final Color color;
  const SalesOverviewCard({
    super.key,
    required this.totalSales,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: Card(
          color: color.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  totalSales,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
