enum FileLocalStateEnum {
  kNew(0),
  kPendingUpload(1),
  kDownloaded(2),
  kMarkedForDeletion(3);

  const FileLocalStateEnum(this.value);

  final int value;
}
