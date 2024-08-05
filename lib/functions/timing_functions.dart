
class TimingUtils{
  // Gets the day of the week depending on the index (0-7)
  static String getDayOfWeek(int index) {
    switch (index) {
      case 0:
        return 'Sunday';
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      default:
        return '';
    }
  }

  static String getNextTiming(int sessionDuration, String time){
    List<String> timings = [];

    // Split the start time string into hour, minute, and AM/PM parts
    List<String> parts = time.split(' ');
    String timePart = parts[0];
    String amPm = parts[1];

    // Split the time part into hour and minute
    List<String> timeParts = timePart.split(':');
    int startHour = int.parse(timeParts[0]);
    int startMinute = int.parse(timeParts[1]);

    // Adjust start hour based on AM/PM
    if (amPm == 'PM' && startHour < 12) {
      startHour += 12;
    } else if (amPm == 'AM' && startHour == 12) {
      startHour = 0;
    }

    while (startHour < 24 && timings.length < 2) {
      String hour = (startHour % 12 == 0 ? 12 : startHour % 12).toString();
      String minute = startMinute == 0 ? '00' : startMinute.toString().padLeft(2, '0');
      amPm = startHour < 12 ? 'AM' : 'PM';
      timings.add('$hour:$minute $amPm');

      startMinute += sessionDuration;
      if (startMinute >= 60) {
        startHour += startMinute ~/ 60;
        startMinute %= 60;
      }
    }

    return timings[1];
  }



  static List<String> generateTimings(int sessionDuration, String startTime) {
    List<String> timings = [];

    // Split the start time string into hour, minute, and AM/PM parts
    List<String> parts = startTime.split(' ');
    String timePart = parts[0];
    String amPm = parts[1];

    // Split the time part into hour and minute
    List<String> timeParts = timePart.split(':');
    int startHour = int.parse(timeParts[0]);
    int startMinute = int.parse(timeParts[1]);

    // Adjust start hour based on AM/PM
    if (amPm == 'PM' && startHour < 12) {
      startHour += 12;
    } else if (amPm == 'AM' && startHour == 12) {
      startHour = 0;
    }

    while (startHour < 24) {
      String hour = (startHour % 12 == 0 ? 12 : startHour % 12).toString();
      String minute = startMinute == 0 ? '00' : startMinute.toString().padLeft(2, '0');
      amPm = startHour < 12 ? 'AM' : 'PM';
      timings.add('$hour:$minute $amPm');

      startMinute += sessionDuration;
      if (startMinute >= 60) {
        startHour += startMinute ~/ 60;
        startMinute %= 60;
      }
    }

    return timings;
  }

  static bool isDateBeforeToday(int day, int month, int year) {
    // Create a DateTime object for the input date
    DateTime inputDate = DateTime(year, month, day);

    // Get the current date without the time part
    DateTime today = DateTime.now();
    DateTime todayWithoutTime = DateTime(today.year, today.month, today.day);

    // Compare the input date with today's date
    return inputDate.isBefore(todayWithoutTime);
  }

}