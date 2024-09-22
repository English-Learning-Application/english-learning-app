import 'package:objectbox/objectbox.dart';

@Entity()
class LocalImageUrlData {
  @Id()
  int? id;
  String? large;
  String? medium;
  String? thumbnail;

  LocalImageUrlData({
    this.large,
    this.medium,
    this.thumbnail,
  });

  @override
  String toString() {
    return 'LocalImageUrlData{id: $id, large: $large, medium: $medium, thumbnail: $thumbnail}';
  }

  @override
  int get hashCode =>
      id.hashCode ^ large.hashCode ^ medium.hashCode ^ thumbnail.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is LocalImageUrlData &&
        other.id == id &&
        other.large == large &&
        other.medium == medium &&
        other.thumbnail == thumbnail;
  }
}
