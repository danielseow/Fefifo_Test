part of 'post_bloc.dart';

@immutable
abstract class PostEvent extends Equatable {
  const PostEvent();
  @override
  List<Object> get props => [];
}

class RequestPostData extends PostEvent {}

class FilterPostData extends PostEvent {
  final int firstId;
  final int lastId;

  const FilterPostData({required this.firstId, required this.lastId});
  @override
  List<Object> get props => [firstId, lastId];
}
