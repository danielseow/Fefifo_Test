part of 'post_bloc.dart';

@immutable
abstract class PostState extends Equatable {
  const PostState();
  @override
  List<Object?> get props => [];
}

class PostInitial extends PostState {}

class GetPostLoading extends PostState {}

class GetPostError extends PostState {}

class GetPostSuccessful extends PostState {
  final List<PostModel> postModelList;
  const GetPostSuccessful({required this.postModelList});

  @override
  List<Object?> get props => [postModelList];
}
