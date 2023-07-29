import 'package:marvel_app/domain/models/marvel_general.model.dart';

abstract class AbstractDashboardRepository {
  Future<MarvelGeneralDataModel?> fetchDataBySection(
      {required String endpoint, int? offset, String title});
}
