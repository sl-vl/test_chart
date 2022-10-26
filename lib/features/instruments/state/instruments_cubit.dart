import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_chart/features/instruments/models/instrument.dart';

part 'instruments_cubit.freezed.dart';
part 'instruments_state.dart';

@injectable
class InstrumentsCubit extends Cubit<InstrumentsState> {
  InstrumentsCubit() : super(InstrumentsState.initial());

  Future<void> loadInstruments() async {
    emit(
      state.copyWith(instruments: const Status.loading()),
    );
    await Future.delayed(const Duration(seconds: 2));

    // Change to Status.error() to show error
    final instruments = Status.success(instrumentsList);

    instruments.maybeWhen(
      success: (data) {
        emit(
          state.copyWith(instruments: Status.success(data)),
        );
      },
      error: () {
        emit(
          state.copyWith(instruments: const Status.error()),
        );
      },
      orElse: () {},
    );
  }

  Future<void> updateSearchQuery(String query) async {
    state.instruments.when(
        initial: () {},
        loading: () {},
        success: (allInstruments) {
          if (query.isNotEmpty) {
            emit(
              state.copyWith(
                searchResults: Search.enabled(
                  allInstruments
                      .where((element) =>
                          element.name
                              .toLowerCase()
                              .contains(query.toLowerCase()) ||
                          element.code
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                      .toList(),
                ),
              ),
            );
          } else {
            emit(
              state.copyWith(searchResults: const Search.disabled()),
            );
          }
        },
        error: () {});
  }
}

List<Instrument> instrumentsList = const [
  Instrument(
    id: "1",
    isin: "isin1",
    code: "AAPL",
    name: "Apple Inc.",
    logoUrl:
        "https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png",
  ),
  Instrument(
    id: "2",
    isin: "isin2",
    code: "GOOGL",
    name: "Alphabet Inc.",
    logoUrl:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png",
  ),
  Instrument(
    id: "3",
    isin: "isin3",
    code: "TSLA",
    name: "Tesla Inc.",
    logoUrl: "https://www.freepnglogos.com/uploads/tesla-logo-png-27.png",
  ),
  Instrument(
    id: "4",
    isin: "isin4",
    code: "SMSN.IL",
    name: "Samsung Electronics Co., Ltd.",
    logoUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEsXbFB7CTmJPZDujwxz07aP7qXxTZWyiN75g4k5At1rRjMle_dFi8u1phXjz8i3Ringw&usqp=CAU",
  ),
  Instrument(
    id: "5",
    isin: "isin5",
    code: "XIACF",
    name: "Xiaomi Corporation",
    logoUrl:
        "https://www.freepnglogos.com/uploads/xiaomi-png/mi-logo-png-3.png",
  ),
  Instrument(
    id: "6",
    isin: "isin6",
    code: "BAC",
    name: "Bank of America Corporation",
    logoUrl:
        "https://www.pintarmewarnai.com/png/thumb/cJfCombL7Ug3v9U-Bank-of-America-Logo-Transparent-Background.png",
  ),
];
