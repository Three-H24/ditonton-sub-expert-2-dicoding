// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/presentation/bloc/tv_series/tv_detail_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:bloc/bloc.dart' as _i7;
import 'package:dartz/dartz.dart' as _i6;
import 'package:ditonton/common/failure.dart' as _i8;
import 'package:ditonton/domain/entities/tv_entities/tv_detail.dart' as _i9;
import 'package:ditonton/domain/repositories/tv_repository.dart' as _i5;
import 'package:ditonton/domain/usecases/tv_usecases/get_tv_detail.dart' as _i2;
import 'package:ditonton/presentation/bloc_provider/tv_provider/tv_series_detail/tv_series_detail_bloc.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGetTvDetail_0 extends _i1.Fake implements _i2.GetTvDetail {}

class _FakeTvSeriesDetailState_1 extends _i1.Fake
    implements _i3.TvSeriesDetailState {}

class _FakeStreamSubscription_2<T> extends _i1.Fake
    implements _i4.StreamSubscription<T> {}

class _FakeTvRepository_3 extends _i1.Fake implements _i5.TvRepository {}

class _FakeEither_4<L, R> extends _i1.Fake implements _i6.Either<L, R> {}

/// A class which mocks [TvSeriesDetailBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvSeriesDetailBloc extends _i1.Mock
    implements _i3.TvSeriesDetailBloc {
  MockTvSeriesDetailBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTvDetail get getTvDetail =>
      (super.noSuchMethod(Invocation.getter(#getTvDetail),
          returnValue: _FakeGetTvDetail_0()) as _i2.GetTvDetail);
  @override
  _i3.TvSeriesDetailState get state => (super.noSuchMethod(
      Invocation.getter(#state),
      returnValue: _FakeTvSeriesDetailState_1()) as _i3.TvSeriesDetailState);
  @override
  _i4.Stream<_i3.TvSeriesDetailState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i3.TvSeriesDetailState>.empty())
          as _i4.Stream<_i3.TvSeriesDetailState>);
  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);
  @override
  void add(_i3.TvSeriesDetailEvent? event) =>
      super.noSuchMethod(Invocation.method(#add, [event]),
          returnValueForMissingStub: null);
  @override
  void onEvent(_i3.TvSeriesDetailEvent? event) =>
      super.noSuchMethod(Invocation.method(#onEvent, [event]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>
      transformEvents(
              _i4.Stream<_i3.TvSeriesDetailEvent>? events,
              _i7.TransitionFunction<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>?
                  transitionFn) =>
          (super.noSuchMethod(
                  Invocation.method(#transformEvents, [events, transitionFn]),
                  returnValue:
                      Stream<_i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>.empty())
              as _i4.Stream<
                  _i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>);
  @override
  void emit(_i3.TvSeriesDetailState? state) =>
      super.noSuchMethod(Invocation.method(#emit, [state]),
          returnValueForMissingStub: null);
  @override
  void on<E extends _i3.TvSeriesDetailEvent>(
          _i7.EventHandler<E, _i3.TvSeriesDetailState>? handler,
          {_i7.EventTransformer<E>? transformer}) =>
      super.noSuchMethod(
          Invocation.method(#on, [handler], {#transformer: transformer}),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i3.TvSeriesDetailState> mapEventToState(
          _i3.TvSeriesDetailEvent? event) =>
      (super.noSuchMethod(Invocation.method(#mapEventToState, [event]),
              returnValue: Stream<_i3.TvSeriesDetailState>.empty())
          as _i4.Stream<_i3.TvSeriesDetailState>);
  @override
  void onTransition(
          _i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>?
              transition) =>
      super.noSuchMethod(Invocation.method(#onTransition, [transition]),
          returnValueForMissingStub: null);
  @override
  _i4.Stream<_i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>
      transformTransitions(
              _i4.Stream<_i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>?
                  transitions) =>
          (super.noSuchMethod(
                  Invocation.method(#transformTransitions, [transitions]),
                  returnValue:
                      Stream<_i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>.empty())
              as _i4.Stream<
                  _i7.Transition<_i3.TvSeriesDetailEvent, _i3.TvSeriesDetailState>>);
  @override
  _i4.Future<void> close() => (super.noSuchMethod(Invocation.method(#close, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i4.Future<void>);
  @override
  _i4.StreamSubscription<_i3.TvSeriesDetailState> listen(
          void Function(_i3.TvSeriesDetailState)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      (super.noSuchMethod(
              Invocation.method(#listen, [
                onData
              ], {
                #onError: onError,
                #onDone: onDone,
                #cancelOnError: cancelOnError
              }),
              returnValue: _FakeStreamSubscription_2<_i3.TvSeriesDetailState>())
          as _i4.StreamSubscription<_i3.TvSeriesDetailState>);
  @override
  void onChange(_i7.Change<_i3.TvSeriesDetailState>? change) =>
      super.noSuchMethod(Invocation.method(#onChange, [change]),
          returnValueForMissingStub: null);
  @override
  void addError(Object? error, [StackTrace? stackTrace]) =>
      super.noSuchMethod(Invocation.method(#addError, [error, stackTrace]),
          returnValueForMissingStub: null);
  @override
  void onError(Object? error, StackTrace? stackTrace) =>
      super.noSuchMethod(Invocation.method(#onError, [error, stackTrace]),
          returnValueForMissingStub: null);
}

/// A class which mocks [GetTvDetail].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetTvDetail extends _i1.Mock implements _i2.GetTvDetail {
  MockGetTvDetail() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.TvRepository get tvRepository =>
      (super.noSuchMethod(Invocation.getter(#tvRepository),
          returnValue: _FakeTvRepository_3()) as _i5.TvRepository);
  @override
  _i4.Future<_i6.Either<_i8.Failure, _i9.TvDetail>> execute(int? id) =>
      (super.noSuchMethod(Invocation.method(#execute, [id]),
              returnValue: Future<_i6.Either<_i8.Failure, _i9.TvDetail>>.value(
                  _FakeEither_4<_i8.Failure, _i9.TvDetail>()))
          as _i4.Future<_i6.Either<_i8.Failure, _i9.TvDetail>>);
}
