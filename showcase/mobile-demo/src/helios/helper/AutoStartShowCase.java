package helios.helper;


import java.util.List;

import ch.ivyteam.api.PublicAPI;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.eventstart.AbstractProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.process.extension.ProgramConfig;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

public class AutoStartShowCase extends AbstractProcessStartEventBean {
  static int MAX_TASKS = 3;

  public AutoStartShowCase() {
    super("Auto start showcase", "Auto start showcase each 60s");

  }

  @Override
  @PublicAPI
  public void initialize(IProcessStartEventBeanRuntime _eventRuntime, ProgramConfig _configuration) {
    _eventRuntime.poll().every(new Duration(60));
    super.initialize(_eventRuntime, _configuration);
  }

  @Override
  @PublicAPI
  public void poll() {
    TaskQuery taskQuery = Ivy.wf().getTaskQueryExecutor().createTaskQuery().where().state().isEqual(TaskState.SUSPENDED)
        .and().name().isLike("Elevator maintenance for%");
    TaskQuery subTaskQuery = Ivy.wf().getTaskQueryExecutor().createTaskQuery().where().state()
        .isEqual(TaskState.SUSPENDED).and().name().isEqual("Start elevator maintenance");

    List<ITask> taskList = Ivy.wf().getTaskQueryExecutor().getResults(taskQuery);
    List<ITask> subTaskList = Ivy.wf().getTaskQueryExecutor().getResults(subTaskQuery);
    int count = taskList.size() + subTaskList.size();
    Ivy.log().debug("elevator maintenance tasks: " + taskList.size() + ", " + subTaskList.size());
    boolean fireProcess = taskList == null || count < MAX_TASKS;
    if (fireProcess) {
      for (int i = 0; i < MAX_TASKS - count; i++) {
        this.getEventBeanRuntime().processStarter();
      }
    }
    int countCreatedTask = 0;
    for (ITask task : taskList) {
      // Ivy.log().debug("task name: " + task.getName() + " state: " + task.getState());
      // if ((task.getName().contains("Start task")) || (task.getName().contains("Elevator maintenance"))) {
      if (task.getName().contains("Start elevator maintenance")) {
        ++countCreatedTask;
      }
    }
    countCreatedTask = MAX_TASKS - countCreatedTask;
    while (countCreatedTask > 0) {
      this.getEventBeanRuntime().processStarter();
      --countCreatedTask;
    }
  }
}
