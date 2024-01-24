class AppConstant {
  static const emptyString = '';
  static const forwardSlash = '/';
  static const channelId = 'myAppChannelId';
  static const channelName = 'myAppChannelName';
  static const appName = "RatingApp";

  static const regexValidateEmail = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  //r'^
  //   (?=.*[A-Z])       // should contain at least one upper case
  //   (?=.*[a-z])       // should contain at least one lower case
  //   (?=.*?[0-9])      // should contain at least one digit
  //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
  //   .{8,}             // Must be at least 8 characters in length
  // $
  static const regexValidatePassword = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
}

class DateFormatConstant {
  static const formatYearMonDay = 'yyyy/MM/dd';
}

enum Rating {
  // veryGood(emoji: '😊',idEmoji: 1,content: 'Rất tốt'),
  good(emoji: 'Đánh giá',idEmoji: 2, content: 'Lượt đánh giá');
  // normal(emoji: '😟',idEmoji: 3,content: 'Bình thường'),
  // bad(emoji: '😡',idEmoji: 4,content: 'Không tốt');
  final String emoji;
  final int idEmoji;
  final String content;
  const Rating({required this.emoji, required this.idEmoji,required this.content});
}
