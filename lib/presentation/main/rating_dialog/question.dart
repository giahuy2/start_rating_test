class Question {
  int id;
  String questionText;
  List<String> answerOptions;
  String selectedAnswer;

  Question(this.id, this.questionText, this.answerOptions)
      : selectedAnswer = answerOptions[0];
}

List<Question> getQuestions() {
  return [
    Question(
        1,
        'Trang phục, tác phong của cán bộ khi tiếp Ông/bà có thân thiện, lịch sự không?',
        ['Tốt', 'Bình thường', 'Kém']),
    Question(
        2,
        'Khi hướng dẫn, giải thích hoặc khi kiểm tra thành phần hồ sơ, cán bộ có thông tin đầy đủ, rõ ràng, dễ hiểu không?',
        ['Tốt', 'Bình thường', 'Kém']),
    Question(3, 'Hồ sơ Ông/bà có được giải quyết đúng hạn không?',
        ['Sớm', 'Đúng hạn', 'Trễ hạn']),
    Question(
        4,
        'Số lần Ông/bà liên hệ với Bộ phận tiếp nhận và  trả kết quả để hoàn thiện hồ sơ (không tính lần nộp hồ sơ đầu tiên và nguyên nhân bổ sung do lỗi của người nộp hồ sơ)',
        ['Không', 'Một lần', 'Hơn một lần']),
    Question(
        5,
        'Ngoài Bộ phận tiếp nhận và trả kết quả, Ông/Bà có gặp cán bộ của cơ quan khác để hoàn thiện hồ sơ không?',
        ['Không', 'Một cơ quan', 'Hơn một cơ quan']),
    Question(
        6,
        'Cán bộ có thái độ cửa quyền, gây khó khăn, phiền hà đối với Ông/Bà không?',
        ['Không', 'Có']),
    Question(
        7,
        'Ông/bà có ý kiến về nội dung, hình thức công khai TTHC tại Bộ phận Một cửa?',
        [
          'Đầy đủ, kịp thời, chính xác bằng bản giấy và có hướng dẫn khi công khai bằng hình thức điện tử',
          'Đầy đủ, kịp thời, chính xác bằng bản giấy',
          'Chưa kịp thời, đầy đủ, chính xác'
        ]),
    Question(
        8,
        'Ông/bà có hài lòng với trang thiết bị, điều kiện phục vụ tại Bộ phận Một cửa?',
        ['Hài lòng', 'Bình thường', 'Không hài lòng']),
  ];
}
