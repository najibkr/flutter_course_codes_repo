import 'package:amazon/repo/models/country.dart';

class CountryState {
  final bool isLoading;
  final bool hasError;
  final bool succeeded;
  final String? error;
  final Country country;
  final List<Country> countries;

  const CountryState({
    required this.isLoading,
    required this.hasError,
    required this.succeeded,
    required this.error,
    required this.country,
    required this.countries,
  });

  const CountryState.init({
    this.isLoading = false,
    this.hasError = false,
    this.succeeded = false,
    this.error,
    this.country = const Country.init(),
    this.countries = const [],
  });

  CountryState copyWith({
    bool? isLoading,
    bool? hasError,
    bool? succeeded,
    String? error,
    Country? country,
    List<Country>? countries,
  }) {
    return CountryState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      succeeded: succeeded ?? this.succeeded,
      error: error ?? this.error,
      country: country ?? this.country,
      countries: countries ?? this.countries,
    );
  }

  CountryState loadingState() {
    return CountryState(
      isLoading: true,
      hasError: false,
      succeeded: false,
      error: error,
      country: country,
      countries: countries,
    );
  }

  CountryState errorState(String? error) {
    return CountryState(
      isLoading: true,
      hasError: false,
      succeeded: false,
      error: error ?? this.error,
      country: country,
      countries: countries,
    );
  }

  CountryState successState({Country? country, List<Country>? countries}) {
    return CountryState(
      isLoading: false,
      hasError: false,
      succeeded: true,
      error: null,
      country: country ?? this.country,
      countries: countries ?? this.countries,
    );
  }
}
