import 'package:marvel_app/domain/models/marvel_general.model.dart';

abstract class MarvelDashboardRepository {
  Future<MarvelGeneralDataModel> fetchDataBySection(
      {String endpoint, int? offset});
}
