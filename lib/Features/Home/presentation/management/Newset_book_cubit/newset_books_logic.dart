import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/presentation/management/Newset_book_cubit/newset_book_state.dart';

import '../../../data/repos/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBookState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
