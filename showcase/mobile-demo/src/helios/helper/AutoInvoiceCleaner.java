package helios.helper;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import ch.ivyteam.api.PublicAPI;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.process.eventstart.AbstractProcessStartEventBean;
import ch.ivyteam.ivy.process.eventstart.IProcessStartEventBeanRuntime;
import ch.ivyteam.ivy.process.extension.ProgramConfig;
import ch.ivyteam.ivy.scripting.objects.Duration;
import ch.ivyteam.ivy.workflow.ITask;
import ch.ivyteam.ivy.workflow.TaskState;
import ch.ivyteam.ivy.workflow.query.TaskQuery;

public class AutoInvoiceCleaner extends AbstractProcessStartEventBean {

  public AutoInvoiceCleaner() {
    super("Auto start showcase", "Auto start showcase each 30s");
  }

  @Override
  @PublicAPI
  public void initialize(IProcessStartEventBeanRuntime _eventRuntime, ProgramConfig _configuration) {
    _eventRuntime.poll().every(new Duration(30));
    super.initialize(_eventRuntime, _configuration);
  }

  @Override
  @PublicAPI
  public void poll() {
    try {
      Calendar dailyTime = Calendar.getInstance(TimeZone.getTimeZone("Euro/Zug"));
      int hourOfDay = dailyTime.get(Calendar.HOUR_OF_DAY);
      int minute = dailyTime.get(Calendar.MINUTE);
      Ivy.log().debug("auto clean invoice, time=" + dailyTime.getTime());

      if (hourOfDay == 1 && minute == 0) {// (minute >= 0 || minute <= 30)) {
        Ivy.log().debug("auto clean invoice");
        TaskQuery subQquery =
            Ivy.wf().getTaskQueryExecutor().createTaskQuery().where().state().isEqual(TaskState.CREATED).or().state()
                .isEqual(TaskState.DELAYED).or().state().isEqual(TaskState.SUSPENDED).or().state()
                .isEqual(TaskState.PARKED).or().state().isEqual(TaskState.RESUMED);
        TaskQuery query = Ivy.wf().getTaskQueryExecutor().createTaskQuery().where().name().isEqual("Approve invoice")
            .and().startTimestamp().isLowerThan(new Date(dailyTime.getTimeInMillis() - (86400000))).and(subQquery);

        List<ITask> oldInvoices = Ivy.wf().getTaskQueryExecutor().getResults(query);
        Ivy.log().debug("auto clean invoice, invoice " + oldInvoices);
        if (oldInvoices != null && oldInvoices.size() > 0) {
          Ivy.log().debug("auto clean invoice, invoice count=" + oldInvoices.size());
          for (ITask iTask : oldInvoices) {
            iTask.destroy();
          }
        }
      }
    } catch (Exception e) {
      this.getEventBeanRuntime().getRuntimeLogLogger().error("fail..." + e, e);
    }
  }
}
