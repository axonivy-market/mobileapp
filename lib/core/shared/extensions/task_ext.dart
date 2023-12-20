import 'package:axon_ivy/data/models/task/task.dart';

extension TaskExt on List<TaskIvy> {
  List<TaskIvy> get sortDefaultTasks {
    List<TaskIvy> sortedList = List.from(this);
    sortedList.sort((l, r) {
      int priorityComparison = l.priority.compareTo(r.priority);
      if (priorityComparison != 0) {
        return priorityComparison;
      } else {
        return _compareClosestExpiryDate(l.expiryTimeStamp, r.expiryTimeStamp);
      }
    });
    return sortedList;
  }

  int _compareClosestExpiryDate(DateTime? left, DateTime? right) {
    if (left != null && right != null) {
      return left.compareTo(right);
    } else if (left != null && right == null) {
      return -1;
    } else if (left == null && right != null) {
      return 1;
    } else {
      return 0;
    }
  }
}
