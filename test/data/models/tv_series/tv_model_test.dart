import 'package:ditonton/data/models/tvmodels/model_tv.dart';
import 'package:ditonton/domain/entities/tv_entities/tv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tTvModel = ModelTv(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3, 4],
    id: 1,
    originalName: 'originalName',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: 'firstAirDate',
    name: 'name',
    voteAverage: 1,
    voteCount: 1,
  );

  final tTv = Tv(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3, 4],
    id: 1,
    originalName: 'originalName',
    overview: 'overview',
    popularity: 1,
    posterPath: 'posterPath',
    firstAirDate: 'firstAirDate',
    name: 'name',
    voteAverage: 1,
    voteCount: 1,
  );

  test('should be a subclass of Tv entity', () async {
    final result = tTvModel.toEntity();
    expect(result, tTv);
  });
}