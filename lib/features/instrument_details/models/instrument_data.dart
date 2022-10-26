import 'package:equatable/equatable.dart';
import 'package:test_chart/features/instrument_details/models/history_data_item.dart';


class InstrumentData extends Equatable {
  final String instrumentIsin;
  final double price;
  final double previousDayClosePrice;
  final double afterHoursClosePrice;
  final List<HistoryDataItem> historyData;
  final String name;


  const InstrumentData({
    required this.instrumentIsin,
    required this.price,
    required this.previousDayClosePrice,
    required this.afterHoursClosePrice,
    required this.historyData,
    required this.name,
  });

  @override
  List<Object> get props {
    return [
      instrumentIsin,
      price,
      previousDayClosePrice,
      afterHoursClosePrice,
      historyData,
      name,
    ];
  }

  double get todaysEarnings => (price - previousDayClosePrice);
  double get afterHoursEarnings => (price - afterHoursClosePrice);
}
