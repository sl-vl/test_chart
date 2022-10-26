import 'package:equatable/equatable.dart';

class HistoryDataItem extends Equatable {
  final double price;
  final DateTime date;

  const HistoryDataItem({
    required this.price,
    required this.date,
  });

  @override
  List<Object> get props => [price, date];
}
