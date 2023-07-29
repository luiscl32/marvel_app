import 'package:marvel_app/data/api/api.config.dart';
import 'package:marvel_app/domain/models/marvel_general.model.dart';
import 'package:marvel_app/domain/repository/dashboard.abstract.repository.dart';
import 'package:dio/dio.dart';

class DashboardRepository extends AbstractDashboardRepository {
  @override
  Future<MarvelGeneralDataModel?> fetchDataBySection(
      {required String endpoint, int? offset, String title = ''}) async {
    try {
      Dio dio = Dio();
      String url = ApiConfig.getRequest(endpoint, offset!, title);

      final Response response = await dio.get(url);

      if (response.data == null) {
        return null;
      }

      return MarvelGeneralDataModel.fromJson(response.data);
    } catch (_) {
      return null;
    }
  }
}
