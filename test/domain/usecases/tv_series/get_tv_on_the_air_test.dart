import 'package:dartz/dartz.dart';
import 'package:ditonton/domain/entities/tv_entities/tv.dart';
import 'package:ditonton/domain/usecases/tv_usecases/get_tv_on_the_air.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/tv_test_helper.mocks.dart';

void main() {
  late GetTvOnTheAir usecase;
  late MockTvRepository mockTvRepository;

  setUp(() {
    mockTvRepository = MockTvRepository();
    usecase = GetTvOnTheAir(mockTvRepository);
  });

  final tTv = <Tv>[];

  test('should get list of TV Series from the repository', () async {
    // arrange
    when(mockTvRepository.getTvOnTheAir()).thenAnswer((_) async => Right(tTv));
    // act
    final result = await usecase.execute();
    // assert
    expect(result, Right(tTv));
  });
}
