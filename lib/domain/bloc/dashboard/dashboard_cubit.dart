import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/data/repositories/marvel.repository.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';
import 'package:bloc/bloc.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());

  MarvelRepository repository = MarvelRepository();

  Future<void> fetchData({
    required String endpoint,
    required int offset,
  }) async {
    state.whenOrNull(
      initial: () async {
        emit(const DashboardState.loading());

        final MarvelGeneralDataModel? response = await repository
            .fetchDataBySection(endpoint: endpoint, offset: offset, title: '');

        List<Result> results = [];

        if (response == null) {
          emit(const DashboardState.error());
        } else {
          results = response.data!.results!;
          emit(DashboardState.loaded(results));
        }
      },
      loaded: (results) async {
        List<Result> oldResults = results;

        final MarvelGeneralDataModel? response = await repository
            .fetchDataBySection(endpoint: endpoint, offset: offset, title: '');

        if (response == null) {
          emit(const DashboardState.error());
        } else {
          final List<Result> newResults =
              {...oldResults, ...response.data!.results!}.toList();
          emit(DashboardState.loaded(newResults));
        }
      },
    );
  }

  Future<void> onSearch({required String title}) async {
    state.whenOrNull(
      loaded: (results) async {
        emit(const DashboardState.loading());
        final MarvelGeneralDataModel? response = await repository
            .fetchDataBySection(endpoint: 'comics', offset: 0, title: title);

        if (response == null) {
          emit(const DashboardState.error());
        } else {
          final List<Result> results = response.data!.results!;
          emit(DashboardState.loaded(results));
        }
      },
    );
  }
}
