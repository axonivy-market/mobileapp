package helios.helper;

import java.util.Calendar;

public class DailyTimeLoader {
  public static String LOTUS_SYNCH_DAILY_TIME = "";
  public static String AUTO_ARCHIVE_COMPLAINT_DAILY_TIME = "";
  public static String AUTO_NOTIFY_COMPLAINT_DAILY_TIME = "";

  private static final Calendar DEFAULT_DAILY_TIME;
  static {
    DEFAULT_DAILY_TIME = Calendar.getInstance();
    DEFAULT_DAILY_TIME.set(Calendar.HOUR_OF_DAY, 0);
    DEFAULT_DAILY_TIME.set(Calendar.MINUTE, 0);
  }

  public static Calendar getAutoArchiveComplaintDailyTime() {
    return getDailyTime(AUTO_ARCHIVE_COMPLAINT_DAILY_TIME);
  }

  public static Calendar getAutoNotifyComplaintDailyTime() {
    return getDailyTime(AUTO_NOTIFY_COMPLAINT_DAILY_TIME);
  }

  public static Calendar getLotusSynchDailyTime() {
    return getDailyTime(LOTUS_SYNCH_DAILY_TIME);
  }

  private static Calendar getDailyTime(String configuredTimeInString) {
    Calendar cal = Calendar.getInstance();
    if (configuredTimeInString == null || configuredTimeInString.isEmpty()) {
      return DEFAULT_DAILY_TIME;
    }
    String[] splitResult = configuredTimeInString.split(":");
    if (splitResult.length <= 0) {
      return DEFAULT_DAILY_TIME;
    }
    try {
      int hour_of_day = Integer.parseInt(splitResult[0]);
      int minute = Integer.parseInt(splitResult[1]);

      cal.set(Calendar.HOUR_OF_DAY, hour_of_day);
      cal.set(Calendar.MINUTE, minute);
      return cal;
    } catch (NumberFormatException e) {
      return DEFAULT_DAILY_TIME;
    }
  }
}
