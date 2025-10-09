import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/addnote_cubit/addnotes_cubit.dart';
import 'package:notes_app/addnote_cubit/addnotes_state.dart';
import 'package:notes_app/views/widgets/addnote_form.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/cutom_textfild.dart';

class add_note extends StatelessWidget {
  const add_note({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnotesCubit, AddnotesState>(
          listener: (context, state) {
            if (state is AddnotesSuccess) {
              Navigator.pop(context);
            } else if (state is AddnotesFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("failed  ${state.errormessage}"),
                  backgroundColor: Colors.red,
                  duration: Duration(seconds: 2),
                ),
              );
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(inAsyncCall: state is AddnotesLoading? true:false,
            child: addnote_form());
          },
        ),
      ),
    );
  }
}
