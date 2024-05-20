enum TaskStateEnum {
  created(0),
  readyForJoin(1),
  joining(2),
  delayed(3),
  suspended(4),
  resumed(5),
  done(6),
  destroyed(7),
  parked(8),
  failed(10),
  joinFailed(11),
  waitingForIntermediateEvent(12),
  doneInOffline(13),
  doneAndUploaded(14),
  doneButConflicted(15),
  doneAsForbidden(16);

  const TaskStateEnum(this.value);

  final int value;
}
