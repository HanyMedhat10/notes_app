import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/note_models.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
