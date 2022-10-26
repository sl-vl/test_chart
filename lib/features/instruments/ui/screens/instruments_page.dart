import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_chart/features/instruments/state/instruments_cubit.dart';
import 'package:test_chart/features/instruments/ui/widgets/instrument_cell.dart';
import 'package:test_chart/features/instruments/ui/widgets/search_instrument_field_widget.dart';
import 'package:test_chart/injection.dart';
import 'package:test_chart/features/instruments/models/instrument.dart';
import 'package:test_chart/resources/app_colors.dart';
import 'package:test_chart/resources/app_text_styles.dart';
import 'package:test_chart/widgets/unfocuser.dart';

class InstrumentsPage extends StatefulWidget {
  const InstrumentsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InstrumentsPage> createState() => _InstrumentsPageState();
}

class _InstrumentsPageState extends State<InstrumentsPage> {
  late final InstrumentsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<InstrumentsCubit>()..loadInstruments();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<InstrumentsCubit, InstrumentsState>(
        builder: (context, state) {
          return Unfocuser(
            child: Scaffold(
              body: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'All Instruments',
                        style: AppTextStyles.b22.black,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SearchFieldWidget(
                      onChanged: (query) => _cubit.updateSearchQuery(query),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: state.instruments.maybeWhen(
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.green,
                            ),
                          );
                        },
                        error: () {
                          return Center(
                            child: Text(
                              'Error occurred while getting instruments',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.n14.grey,
                            ),
                          );
                        },
                        success: (allInstruments) {
                          return state.searchResults.when(
                            disabled: () {
                              return _AllInstrumentsView(
                                allInstruments: allInstruments,
                              );
                            },
                            enabled: (serchResult) {
                              return _SearchResultsView(
                                serchResult: serchResult,
                              );
                            },
                          );
                        },
                        orElse: () {
                          return Container();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SearchResultsView extends StatelessWidget {
  const _SearchResultsView({
    Key? key,
    required this.serchResult,
  }) : super(key: key);

  final List<Instrument> serchResult;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: serchResult.length,
      itemBuilder: (ctx, i) {
        final itemData = serchResult[i];
        return InstrumentCell(
          item: itemData,
        );
      },
    );
  }
}

class _AllInstrumentsView extends StatelessWidget {
  const _AllInstrumentsView({
    Key? key,
    required this.allInstruments,
  }) : super(key: key);

  final List<Instrument> allInstruments;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allInstruments.length,
      itemBuilder: (ctx, i) {
        final itemData = allInstruments[i];
        return InstrumentCell(
          item: itemData,
        );
      },
    );
  }
}
