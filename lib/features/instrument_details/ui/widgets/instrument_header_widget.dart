import 'package:flutter/material.dart';
import 'package:test_chart/features/instrument_details/models/instrument_data.dart';
import 'package:test_chart/resources/app_text_styles.dart';

class InstrumentHeaderWidget extends StatelessWidget {
  const InstrumentHeaderWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final InstrumentData data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.name,
            style: AppTextStyles.b22,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '\$ ${data.price}',
            style: AppTextStyles.n34,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            '${_buildEarningsChange(
              todaysEarnings: data.todaysEarnings,
              price: data.price,
            )} Today',
            style: AppTextStyles.b14.grey,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '${_buildEarningsChange(
              todaysEarnings: data.afterHoursEarnings,
              price: data.price,
            )} After Hours',
            style: AppTextStyles.b14.grey,
          ),
        ],
      ),
    );
  }

  String _buildEarningsChange({
    required double todaysEarnings,
    required double price,
  }) {
    final percents = todaysEarnings / price * 100;
    return '\$${todaysEarnings.toStringAsFixed(2)} (${percents.toStringAsFixed(2)}%)';
  }
}
