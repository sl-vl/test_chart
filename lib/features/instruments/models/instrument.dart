import 'package:equatable/equatable.dart';

class Instrument extends Equatable {
  final String id;
  final String isin;
  final String code;
  final String name;
  final String logoUrl;

  const Instrument({
    required this.id,
    required this.isin,
    required this.code,
    required this.name,
    required this.logoUrl,
  });

  @override
  List<Object> get props => [id, isin, name, logoUrl];
}
