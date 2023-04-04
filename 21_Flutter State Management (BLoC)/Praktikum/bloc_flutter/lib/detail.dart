import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_flutter/bloc/data_bloc.dart';
import 'package:bloc_flutter/bloc/data_event.dart';
import 'package:bloc_flutter/bloc/data_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Mahasiswa'),
          centerTitle: true,
        ),
        body: Column(children: [
          SizedBox(
            height: 400,
            child: BlocBuilder<DataBloc, DataState>(builder: (context, state) {
              return ListView.builder(
                  itemCount: state.datamhs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.datamhs[index].nama),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.datamhs[index].prodi),
                          Text(state.datamhs[index].univ),
                        ],
                      ),
                    );
                  });
            }),
          ),
        ]));
  }
}
