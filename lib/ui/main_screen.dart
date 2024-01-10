import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/repository/locate_repository.dart';
import 'package:weather_app/view_model/MainViewModel.dart';

import '../di/di_setup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<MainViewModel>().getWeatherData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    return Scaffold(
      body: Center(
          child: Column(
              children: [
          viewModel.model == null ?
          const CircularProgressIndicator()
              :Text(viewModel.model!.time[viewModel.state.
          dateLength])
      ],
    ),)
    ,
    );
  }
}
