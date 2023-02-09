import 'package:biznugget/config/routes/app_routes.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Biznugget extends StatelessWidget {
  const Biznugget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WishlistItemsCubit>(
            create: (context) => WishlistItemsCubit()..fetchAllWishlistItems()),

        /// add your BlocPrvider here
      ],
      child: const MaterialApp(
        title: AppStrings.appName,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
