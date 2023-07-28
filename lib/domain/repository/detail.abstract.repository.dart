import 'package:marvel_app/domain/models/detail.model.dart';

abstract class AbstractDetailRepository {
  Future<DetailModel?> fetchComicDetail({required int id});
}
