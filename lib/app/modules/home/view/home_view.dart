import 'package:base_bloc_cubit/app/modules/home/controller/home_controller.dart';
import 'package:base_bloc_cubit/app/modules/home/data/home_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME VIEW"),
      ),
      body: Column(
        children: [
          BlocConsumer<HomeController, HomeData>(
            listener: (ctx, data) {},
            builder: (ctx, data) {
              return data.isLoad == true
                  ? const Text("Memuat ...")
                  : Text(data.name);
            },
          ),
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(),
            child: TextFormField(
              initialValue: 'John Doe',
              maxLength: 20,
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: "What's your name?",
              ),
              onChanged: (value) {
                BlocProvider.of<HomeController>(context).onChangeName(
                  name: value,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
