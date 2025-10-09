abstract class AddnotesState {}

class AddnotesInitial extends AddnotesState {}

class AddnotesLoading extends AddnotesState {}

class AddnotesSuccess extends AddnotesState {}

class AddnotesFailure extends AddnotesState {
  final String errMessage;
  AddnotesFailure(this.errMessage);

  get errormessage => null;
}
