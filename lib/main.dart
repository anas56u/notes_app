import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/addnote_cubit/addnotes_cubit.dart';
import 'package:notes_app/conest.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simplebloc_observer.dart';
import 'package:notes_app/views/home_page.dart';

void main() async {
  Bloc.observer = SimpleblocObserver();
  await Hive.initFlutter();
  await  Hive.openBox(knotes);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddnotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins"
        ),
        home:  HomePage(),
      
      
      ),
    );
  }
}
