import 'package:fefifo_test/bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<PostBloc>(context)
                      .add(const FilterPostData(firstId: 1, lastId: 3));
                },
                child: const Text("UserID 1-3"),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<PostBloc>(context)
                      .add(const FilterPostData(firstId: 4, lastId: 7));
                },
                child: const Text("UserID 4-7"),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<PostBloc>(context)
                      .add(const FilterPostData(firstId: 8, lastId: 10));
                },
                child: const Text("UserID 8-10"),
              ),
            ),
          ],
        ),
        const Text("Transaction History"),
        const Divider(
          thickness: 1,
        ),
        Expanded(
          child: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              if (state is GetPostSuccessful) {
                return ListView.builder(
                  itemCount: state.postModelList.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Text("UserID: ${state.postModelList[index].userId!}"),
                    title: Text(state.postModelList[index].title!),
                  ),
                );
              } else if (state is GetPostError) {
                return const Center(
                  child: Text("Error occured!"),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
