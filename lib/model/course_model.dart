class Course {
  final String title;
  final String author;
  final int videoCount;
  final String imageUrl;
  final List<Video> videos;

  Course({
    required this.title,
    required this.author,
    required this.videoCount,
    required this.imageUrl,
    required this.videos,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      title: json['title'],
      author: json['author'],
      videoCount: json['videoCount'],
      imageUrl: json['imageUrl'],
      videos: (json['videos'] as List)
          .map((videoJson) => Video.fromJson(videoJson))
          .toList(),
    );
  }
}

class Video {
  final String title;
  final String duration;
  final String videoUrl; 

  Video({
    required this.title,
    required this.duration,
    required this.videoUrl, 
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['title'],
      duration: json['duration'],
      videoUrl: json['videoUrl'] ?? '', // Ensure the correct field name
    );
  }
}
