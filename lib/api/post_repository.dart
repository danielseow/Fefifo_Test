import 'package:fefifo_test/api/post_provider.dart';
import 'package:fefifo_test/model/post_model.dart';

class PostRepository {
  final provider = PostProvider();
  Future<List<PostModel>> fetchPostAPI() async {
    final response = await provider.getPostsProvider();
    List<PostModel> model = (response as List).map((i) => PostModel.fromJson(i)).toList();

    return model;
  }
}
