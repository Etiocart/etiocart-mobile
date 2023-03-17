class Event_Getall {
  List<Events>? events;

  Event_Getall({this.events});

  Event_Getall.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  EventCategory? eventCategory;
  String? description;
  String? eventStart;
  String? eventEnd;
  int? id;
  String? location;
  int? latitude;
  int? longitude;
  Organizer? organizer;
  String? title;
  String? videoLink;
  List<Images>? images;

  Events(
      {this.eventCategory,
      this.description,
      this.eventStart,
      this.eventEnd,
      this.id,
      this.location,
      this.latitude,
      this.longitude,
      this.organizer,
      this.title,
      this.videoLink,
      this.images});

  Events.fromJson(Map<String, dynamic> json) {
    eventCategory = json['event_category'] != null
        ? new EventCategory.fromJson(json['event_category'])
        : null;
    description = json['description'];
    eventStart = json['event_start'];
    eventEnd = json['event_end'];
    id = json['id'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    organizer = json['organizer'] != null
        ? new Organizer.fromJson(json['organizer'])
        : null;
    title = json['title'];
    videoLink = json['video_link'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eventCategory != null) {
      data['event_category'] = this.eventCategory!.toJson();
    }
    data['description'] = this.description;
    data['event_start'] = this.eventStart;
    data['event_end'] = this.eventEnd;
    data['id'] = this.id;
    data['location'] = this.location;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    if (this.organizer != null) {
      data['organizer'] = this.organizer!.toJson();
    }
    data['title'] = this.title;
    data['video_link'] = this.videoLink;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventCategory {
  int? id;
  String? category;

  EventCategory({this.id, this.category});

  EventCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    return data;
  }
}

class Organizer {
  int? id;
  String? name;

  Organizer({this.id, this.name});

  Organizer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Images {
  String? image;
  String? filename;

  Images({this.image, this.filename});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    filename = json['filename'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['filename'] = this.filename;
    return data;
  }
}
