import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fefifo_test/api/post_repository.dart';
import 'package:fefifo_test/model/post_model.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostRepository repository = PostRepository();
  late List<PostModel> postModelList;
  PostBloc() : super(PostInitial()) {
    on<RequestPostData>((event, emit) => _onRequesPostData(event, emit));
    on<FilterPostData>((event, emit) => _onFilterPostData(event, emit));
  }

  _onRequesPostData(RequestPostData event, Emitter<PostState> emit) async {
    emit(GetPostLoading());
    try {
      List<PostModel> postModelList = await repository.fetchPostAPI();
      this.postModelList = postModelList;
      emit(GetPostSuccessful(postModelList: postModelList));
    } catch (e) {
      emit(GetPostError());
    }
  }

  _onFilterPostData(FilterPostData event, Emitter<PostState> emit) async {
    emit(GetPostLoading());
    try {
      final List<PostModel> filteredPostModelList = postModelList
          .where((element) => element.userId! >= event.firstId && element.userId! <= event.lastId)
          .toList();
      emit(GetPostSuccessful(postModelList: filteredPostModelList));
    } catch (e) {
      emit(GetPostError());
    }
  }
}
