import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/management/featured_books_cubit/featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());

}
