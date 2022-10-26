import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_chart/features/instrument_details/models/history_data_item.dart';
import 'package:test_chart/features/instrument_details/models/instrument_data.dart';

part 'instrument_detail_cubit.freezed.dart';
part 'instrument_detail_state.dart';

@injectable
class InstrumentDetailCubit extends Cubit<InstrumentDetailState> {
  InstrumentDetailCubit() : super(InstrumentDetailState.initial());

  Future<void> prepareInfo(String isin) async {
    emit(
      state.copyWith(instrument: const Status.loading()),
    );
    await Future.delayed(const Duration(seconds: 2));

    // Change to Status.error() to show error
    final instrumentData = Status.success(
      instrumentsData.firstWhere(
        (i) => i.instrumentIsin == isin,
      ),
    );

    instrumentData.maybeWhen(
      success: (data) {
        emit(
          state.copyWith(instrument: Status.success(data)),
        );
      },
      error: () {
        emit(
          state.copyWith(instrument: const Status.error()),
        );
      },
      orElse: () {},
    );
  }
}

List<InstrumentData> instrumentsData = [
  InstrumentData(
    instrumentIsin: "isin1",
    name: "Apple Inc.",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
  InstrumentData(
    instrumentIsin: "isin2",
    name: "Alphabet Inc.",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
  InstrumentData(
    instrumentIsin: "isin3",
    name: "Tesla Inc.",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
  InstrumentData(
    instrumentIsin: "isin4",
    name: "Samsung Electronics Co., Ltd.",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
  InstrumentData(
    instrumentIsin: "isin5",
    name: "Xiaomi Corporation",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
  InstrumentData(
    instrumentIsin: "isin6",
    name: "Bank of America Corporation",
    price: 120.69,
    afterHoursClosePrice: 110.12,
    previousDayClosePrice: 123.64,
    historyData: [
      HistoryDataItem(
        price: 120.69,
        date: DateTime(
          2022,
          10,
          26,
          20,
        ),
      ),
      HistoryDataItem(
        price: 119.12,
        date: DateTime(
          2022,
          10,
          26,
          10,
        ),
      ),
      HistoryDataItem(
        price: 90.43,
        date: DateTime(
          2022,
          10,
          24,
          3,
        ),
      ),
      HistoryDataItem(
        price: 110.8,
        date: DateTime(
          2022,
          10,
          21,
          12,
        ),
      ),
      HistoryDataItem(
        price: 100.66,
        date: DateTime(
          2022,
          10,
          18,
          8,
        ),
      ),
      HistoryDataItem(
        price: 147.34,
        date: DateTime(
          2022,
          10,
          1,
          4,
        ),
      ),
      HistoryDataItem(
        price: 35.55,
        date: DateTime(
          2022,
          9,
          15,
          2,
        ),
      ),
      HistoryDataItem(
        price: 79.12,
        date: DateTime(
          2022,
          9,
          2,
        ),
      ),
      HistoryDataItem(
        price: 55.12,
        date: DateTime(
          2022,
          8,
          15,
        ),
      ),
      HistoryDataItem(
        price: 132.12,
        date: DateTime(
          2022,
          8,
          1,
        ),
      ),
      HistoryDataItem(
        price: 122.12,
        date: DateTime(
          2022,
          7,
          26,
        ),
      ),
      HistoryDataItem(
        price: 77.88,
        date: DateTime(
          2022,
          7,
          14,
        ),
      ),
      HistoryDataItem(
        price: 95.55,
        date: DateTime(
          2022,
          7,
          1,
        ),
      ),
      HistoryDataItem(
        price: 30.55,
        date: DateTime(
          2022,
          6,
          1,
        ),
      ),
      HistoryDataItem(
        price: 20.55,
        date: DateTime(
          2022,
          5,
          1,
        ),
      ),
      HistoryDataItem(
        price: 53.90,
        date: DateTime(
          2022,
          4,
          1,
        ),
      ),
      HistoryDataItem(
        price: 79.55,
        date: DateTime(
          2022,
          3,
          1,
        ),
      ),
      HistoryDataItem(
        price: 17.55,
        date: DateTime(
          2022,
          2,
          1,
        ),
      ),
      HistoryDataItem(
        price: 18.31,
        date: DateTime(
          2021,
          8,
          4,
        ),
      ),
      HistoryDataItem(
        price: 3.31,
        date: DateTime(
          2021,
          5,
          2,
        ),
      ),
    ],
  ),
];
