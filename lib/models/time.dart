class TimeModel {
  DateTime dateTime;

  TimeModel({required this.dateTime});
  factory TimeModel.fromJson(Map json) {
    return TimeModel(
      dateTime: DateTime(
        json['year'],
        json['month'],
        json['day'],
        json['hour'],
        json['minute'],
        json['seconds'],
        json['milliSeconds'],
      ),
    );
  }
}
