import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBookState {}

class NewestBooksLoading extends NewestBookState {}

class NewestBooksFailure extends NewestBookState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}

class NewestBooksSuccess extends NewestBookState {
  final List<BookModel> books;

  const NewestBooksSuccess(this.books);
}
