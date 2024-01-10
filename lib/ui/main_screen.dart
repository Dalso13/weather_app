import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/view_model/MainViewModel.dart';
import 'package:weather_app/view_model/main_state.dart';

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
    final state = viewModel.state;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !state.isLoading
                ? const CircularProgressIndicator()
                : getMenu(state)
          ],
        ),
      ),
    );
  }
  Widget getMenu(MainState state) {
    return Column(
      children: [
        Text('현재 위치 날씨',style: TextStyle(fontSize: 30)),
        Image.network(state.codeModel!.image),
        Text('${state.model!.temperature[state.dateLength]}\'c',style: const TextStyle(fontSize: 30),),
      ],
    );
  }
}
