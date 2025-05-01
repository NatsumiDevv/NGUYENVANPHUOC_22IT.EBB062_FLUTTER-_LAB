import 'story.dart';

class StoryBrain {
  int _storyIndex = 0;

  final List<Story> _storyData = [
    Story(
        'Bạn đang lái xe trên một con đường vắng vào ban đêm thì xe bất ngờ hết xăng. Phía trước có một ngôi nhà hoang có ánh đèn le lói. Bạn có vào không?',
        'Có, tôi cần sự giúp đỡ.',
        'Không, tôi sẽ ở lại xe và chờ người qua đường.'),
    Story(
        'Bạn gõ cửa và một giọng nói bí ẩn vang lên: "Vào đi...". Cánh cửa tự động mở ra. Bạn có bước vào không?',
        'Bước vào ngôi nhà.',
        'Chạy khỏi đó ngay lập tức!'),
    Story(
        'Bạn ở lại xe và đợi, nhưng sau vài giờ, không ai đi qua. Gió bắt đầu mạnh lên và bạn nghe thấy tiếng bước chân xung quanh.',
        'Ra khỏi xe và đi về phía ngôi nhà.',
        'Cố thủ trong xe.'),
    Story(
        'Bạn bước vào nhà và thấy một tờ giấy ghi: "Bạn là vị khách thứ 100... Và cũng có thể là người cuối cùng!". Cửa sau lưng bạn đóng sầm lại!',
        'Tìm lối thoát.',
        'Tìm kiếm chủ nhà.'),
    Story(
        'Bạn quyết định chạy đi, nhưng vừa ra khỏi nhà, một bóng đen xuất hiện chặn đường bạn. Bạn hét lên và ngất đi... Kết thúc bí ẩn!',
        'Chơi lại',
        ''),
    Story(
        'Bạn tìm thấy một cầu thang bí mật dẫn xuống tầng hầm. Trong đó có một cánh cửa với ánh sáng mờ ảo.',
        'Mở cửa.',
        'Trở lại tầng trên.'),
    Story(
        'Bạn mở cửa và thấy một căn phòng đầy bức ảnh của những người từng vào đây... và không ai trong số họ thoát ra được! Kết thúc đáng sợ!',
        'Chơi lại',
        ''),
    Story(
        'Bạn quay lại tầng trên nhưng nhận ra cửa chính đã bị khóa. Đột nhiên, bạn nghe thấy tiếng cười ma quái vang lên ngay sau lưng...',
        'Chơi lại',
        ''),
  ];

  String getStory() {
    return _storyData[_storyIndex].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyIndex].choice1;
  }

  String getChoice2() {
    return _storyData[_storyIndex].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyIndex == 0 && choiceNumber == 1) {
      _storyIndex = 1;
    } else if (_storyIndex == 0 && choiceNumber == 2) {
      _storyIndex = 2;
    } else if (_storyIndex == 1 && choiceNumber == 1) {
      _storyIndex = 3;
    } else if (_storyIndex == 1 && choiceNumber == 2) {
      _storyIndex = 4;
    } else if (_storyIndex == 2 && choiceNumber == 1) {
      _storyIndex = 3;
    } else if (_storyIndex == 2 && choiceNumber == 2) {
      _storyIndex = 5;
    } else if (_storyIndex == 3 && choiceNumber == 1) {
      _storyIndex = 5;
    } else if (_storyIndex == 3 && choiceNumber == 2) {
      _storyIndex = 6;
    } else if (_storyIndex == 5 && choiceNumber == 1) {
      _storyIndex = 6;
    } else if (_storyIndex == 5 && choiceNumber == 2) {
      _storyIndex = 7;
    } else {
      restart();
    }
  }

  void restart() {
    _storyIndex = 0;
  }

  bool isEnd() {
    return _storyIndex >= 4;
  }
}
