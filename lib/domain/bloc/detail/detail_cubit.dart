import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marvel_app/data/repositories/detail.repository.dart';
import 'package:marvel_app/domain/models/detail.model.dart';

part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(const DetailState.initial());

  final DetailRepository repository = DetailRepository();

  Future<void> fetchDetail({required int id}) async {
    emit(const DetailState.loading());

    final response = await repository.fetchComicDetail(id: id);

    if (response == null) {
      emit(const DetailState.error());
    } else {
      final result = response.data!.results![0];
      emit(DetailState.loaded(result));
    }
  }
}
