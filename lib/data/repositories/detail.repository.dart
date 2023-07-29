import 'package:dio/dio.dart';
import 'package:marvel_app/data/api/api.config.dart';
import 'package:marvel_app/domain/models/detail.model.dart';
import 'package:marvel_app/domain/repository/detail.abstract.repository.dart';

class DetailRepository extends AbstractDetailRepository {
  @override
  Future<DetailModel?> fetchComicDetail({required int id}) async {
    try {
      Dio dio = Dio();
      String url = ApiConfig.getRequest('comics/$id', 0, '');

      final Response response = await dio.get(url);

      if (response.data == null) {
        return null;
      }

      return DetailModel.fromJson(response.data);
    } catch (_) {
      return null;
    }
  }
}
