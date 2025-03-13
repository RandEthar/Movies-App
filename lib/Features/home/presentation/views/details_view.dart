import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart'; // ✅ استيراد الباكيج
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies_detuils/featch_movies_detuils_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/details_view_body.dart';
import 'package:movies_app/core/theming/colors.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.moviesModel});
  final MoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: BlocBuilder<FeatchMoviesDetuilsCubit, FeatchMoviesDetuilsState>(
        builder: (context, state) {
          return ModalProgressHUD( 
            inAsyncCall: state is FeatchMoviesDetuilsLoading, 
            color: Colors.red, 
            opacity: 0.5, 
            child: SafeArea(
              child: state is FeatchMoviesDetuilsSuccess
                  ? DetailsViewBody(
                      detauilsMovieModel: state.detauilsMovieModel,
                      moviesModel: moviesModel,
                    )
                  : state is FeatchMoviesDetuilsFaluir
                      ? Center(child: Text(state.errorMassage, style: TextStyle(color: Colors.white))) 
                      : const SizedBox(), 
            ),
          );
        },
      ),
    );
  }
}

