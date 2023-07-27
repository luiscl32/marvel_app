import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/data/repositories/marvel.repository.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());

  MarvelRepository repository = MarvelRepository();

  Future<void> fetchData({
    required String endpoint,
    required int offset,
  }) async {
    emit(const DashboardState.loading());

    final MarvelGeneralDataModel? response =
        await repository.fetchDataBySection(endpoint: endpoint, offset: offset);

    if (response == null) {
      emit(const DashboardState.error());
    } else {
      emit(DashboardState.loaded(response.data!));
    }
  }
}
