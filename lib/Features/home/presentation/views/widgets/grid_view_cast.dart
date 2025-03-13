import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies_detuils/featch_movies_detuils_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/grid_view_cast_item.dart';

class GridViewCast extends StatelessWidget {
  const GridViewCast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchMoviesDetuilsCubit, FeatchMoviesDetuilsState>(
      buildWhen: (previous, current) => current is FeatchCastSuccess||current is FeatchCastFaluir ,
      builder: (context, state) {
        if (state is FeatchCastSuccess) {
  return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.7,
      ),
      shrinkWrap: true,
      itemCount: state.listCastModel.length,
      itemBuilder: (context, index) {
        return GridViewCastItem(castModel: state.listCastModel[index],);
      });
}else if (state is FeatchCastFaluir) {
  return Text(state.errorMassage);
}
return const SizedBox();
      },
    );
  }
}
