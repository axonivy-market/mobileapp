import 'package:axon_ivy/data/models/enums/file_local_state_enum.dart';
import 'package:axon_ivy/features/task/domain/entities/case/case.dart';
import 'package:axon_ivy/features/task/domain/entities/document/document.dart';

extension CaseExt on CaseTask? {
  List<Document> get availableDocuments {
    var list = this
        ?.documents
        .where((element) =>
            element.fileLocalState !=
            FileLocalStateEnum.kMarkedForDeletion.value)
        .toList()
        .reversed
        .toList();
    return list ?? [];
  }
}
