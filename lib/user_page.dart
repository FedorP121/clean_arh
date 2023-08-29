import 'package:clean_arh/src/features/presentation/bloc/start_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/service_locator/service_locator.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => sl<StartPageBloc>()..add(PageEvent()),
          child: BlocBuilder<StartPageBloc, StartPageState>(
            builder: (context, state) {
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
