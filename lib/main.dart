import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/utils.dart';
import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/movie_detail_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/home_movie_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/popular_movies_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/search_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/top_rated_movies_page.dart';
import 'package:ditonton/presentation/pages/movie_pages/watchlist_movies_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/detail_tv_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/home_tv_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/popular_tv_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/search_tv_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/top_rated_tv_page.dart';
import 'package:ditonton/presentation/pages/tv_pages/watchlist_tv_page.dart';
import 'package:ditonton/presentation/provider/movie_provider/movie_detail_notifier.dart';
import 'package:ditonton/presentation/provider/movie_provider/movie_list_notifier.dart';
import 'package:ditonton/presentation/provider/movie_provider/movie_search_notifier.dart';
import 'package:ditonton/presentation/provider/movie_provider/popular_movies_notifier.dart';
import 'package:ditonton/presentation/provider/movie_provider/top_rated_movies_notifier.dart';
import 'package:ditonton/presentation/provider/movie_provider/watchlist_movie_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/popular_tv_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/top_rated_tv_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/tv_detail_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/tv_list_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/tv_search_notifier.dart';
import 'package:ditonton/presentation/provider/tv_provider/watchlist_tv_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ditonton/injection.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieListNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieDetailNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieSearchNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TopRatedMoviesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<PopularMoviesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<WatchlistMovieNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TvListNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TvDetailNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TvSearchNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TopRatedTvNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<PopularTvNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<WatchlistTvNotifier>(),
        ),
      ],
      child: MaterialApp(
        title: 'Ditonton App Dicoding',
        theme: ThemeData.dark().copyWith(
          colorScheme: kColorScheme,
          primaryColor: kRichBlack,
          scaffoldBackgroundColor: kRichBlack,
          textTheme: kTextTheme,
        ),
        home: HomeMoviePage(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/home':
              return MaterialPageRoute(builder: (_) => HomeMoviePage());
            case '/tv':
              return MaterialPageRoute(builder: (_) => HomeTvPage());
            case DetailTvPage.ROUTE_NAME:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => DetailTvPage(id: id),
                settings: settings,
              );
            case PopularTvPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => PopularTvPage());
            case TopRatedTvPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => TopRatedTvPage());
            case SearchTvPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => SearchTvPage());
            case WatchlistTvPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => WatchlistTvPage());
            case PopularMoviesPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => PopularMoviesPage());
            case TopRatedMoviesPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => TopRatedMoviesPage());
            case MovieDetailPage.ROUTE_NAME:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => MovieDetailPage(id: id),
                settings: settings,
              );
            case SearchPage.ROUTE_NAME:
              return CupertinoPageRoute(builder: (_) => SearchPage());
            case WatchlistMoviesPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => WatchlistMoviesPage());
            case AboutPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => AboutPage());
            default:
              return MaterialPageRoute(builder: (_) {
                return Scaffold(
                  body: Center(
                    child: Text('Page not found :('),
                  ),
                );
              });
          }
        },
      ),
    );
  }
}