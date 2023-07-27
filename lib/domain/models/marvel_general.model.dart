// To parse this JSON data, do
//
//     final marvelGeneralDataModel = marvelGeneralDataModelFromJson(jsonString);

import 'dart:convert';

MarvelGeneralDataModel marvelGeneralDataModelFromJson(String str) =>
    MarvelGeneralDataModel.fromJson(json.decode(str));

String marvelGeneralDataModelToJson(MarvelGeneralDataModel data) =>
    json.encode(data.toJson());

class MarvelGeneralDataModel {
  final Data? data;

  MarvelGeneralDataModel({
    this.data,
  });

  factory MarvelGeneralDataModel.fromJson(Map<String, dynamic> json) =>
      MarvelGeneralDataModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<Result>? results;

  Data({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        offset: json["offset"],
        limit: json["limit"],
        total: json["total"],
        count: json["count"],
        results: json["results"] == null
            ? []
            : List<Result>.from(
                json["results"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "offset": offset,
        "limit": limit,
        "total": total,
        "count": count,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class Result {
  final int? id;
  final int? digitalId;
  final String? title;
  final int? issueNumber;
  final String? variantDescription;
  final String? description;
  final String? modified;
  final String? isbn;
  final String? upc;
  final DiamondCode? diamondCode;
  final Ean? ean;
  final String? issn;
  final String? format;
  final int? pageCount;
  final List<TextObject>? textObjects;
  final String? resourceUri;
  final List<Url>? urls;
  final Series? series;
  final List<Series>? variants;
  final List<dynamic>? collections;
  final List<Series>? collectedIssues;
  final List<DateElement>? dates;
  final List<Price>? prices;
  final Thumbnail? thumbnail;
  final List<Thumbnail>? images;
  final Creators? creators;
  final Characters? characters;
  final Stories? stories;
  final Characters? events;

  Result({
    this.id,
    this.digitalId,
    this.title,
    this.issueNumber,
    this.variantDescription,
    this.description,
    this.modified,
    this.isbn,
    this.upc,
    this.diamondCode,
    this.ean,
    this.issn,
    this.format,
    this.pageCount,
    this.textObjects,
    this.resourceUri,
    this.urls,
    this.series,
    this.variants,
    this.collections,
    this.collectedIssues,
    this.dates,
    this.prices,
    this.thumbnail,
    this.images,
    this.creators,
    this.characters,
    this.stories,
    this.events,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        digitalId: json["digitalId"],
        title: json["title"],
        issueNumber: json["issueNumber"],
        variantDescription: json["variantDescription"],
        description: json["description"],
        modified: json["modified"],
        isbn: json["isbn"],
        upc: json["upc"],
        diamondCode: diamondCodeValues.map[json["diamondCode"]]!,
        ean: eanValues.map[json["ean"]]!,
        issn: json["issn"],
        format: json["format"],
        pageCount: json["pageCount"],
        textObjects: json["textObjects"] == null
            ? []
            : List<TextObject>.from(
                json["textObjects"]!.map((x) => TextObject.fromJson(x))),
        resourceUri: json["resourceURI"],
        urls: json["urls"] == null
            ? []
            : List<Url>.from(json["urls"]!.map((x) => Url.fromJson(x))),
        series: json["series"] == null ? null : Series.fromJson(json["series"]),
        variants: json["variants"] == null
            ? []
            : List<Series>.from(
                json["variants"]!.map((x) => Series.fromJson(x))),
        collections: json["collections"] == null
            ? []
            : List<dynamic>.from(json["collections"]!.map((x) => x)),
        collectedIssues: json["collectedIssues"] == null
            ? []
            : List<Series>.from(
                json["collectedIssues"]!.map((x) => Series.fromJson(x))),
        dates: json["dates"] == null
            ? []
            : List<DateElement>.from(
                json["dates"]!.map((x) => DateElement.fromJson(x))),
        prices: json["prices"] == null
            ? []
            : List<Price>.from(json["prices"]!.map((x) => Price.fromJson(x))),
        thumbnail: json["thumbnail"] == null
            ? null
            : Thumbnail.fromJson(json["thumbnail"]),
        images: json["images"] == null
            ? []
            : List<Thumbnail>.from(
                json["images"]!.map((x) => Thumbnail.fromJson(x))),
        creators: json["creators"] == null
            ? null
            : Creators.fromJson(json["creators"]),
        characters: json["characters"] == null
            ? null
            : Characters.fromJson(json["characters"]),
        stories:
            json["stories"] == null ? null : Stories.fromJson(json["stories"]),
        events:
            json["events"] == null ? null : Characters.fromJson(json["events"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "digitalId": digitalId,
        "title": title,
        "issueNumber": issueNumber,
        "variantDescription": variantDescription,
        "description": description,
        "modified": modified,
        "isbn": isbn,
        "upc": upc,
        "diamondCode": diamondCodeValues.reverse[diamondCode],
        "ean": eanValues.reverse[ean],
        "issn": issn,
        "format": format,
        "pageCount": pageCount,
        "textObjects": textObjects == null
            ? []
            : List<dynamic>.from(textObjects!.map((x) => x.toJson())),
        "resourceURI": resourceUri,
        "urls": urls == null
            ? []
            : List<dynamic>.from(urls!.map((x) => x.toJson())),
        "series": series?.toJson(),
        "variants": variants == null
            ? []
            : List<dynamic>.from(variants!.map((x) => x.toJson())),
        "collections": collections == null
            ? []
            : List<dynamic>.from(collections!.map((x) => x)),
        "collectedIssues": collectedIssues == null
            ? []
            : List<dynamic>.from(collectedIssues!.map((x) => x.toJson())),
        "dates": dates == null
            ? []
            : List<dynamic>.from(dates!.map((x) => x.toJson())),
        "prices": prices == null
            ? []
            : List<dynamic>.from(prices!.map((x) => x.toJson())),
        "thumbnail": thumbnail?.toJson(),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "creators": creators?.toJson(),
        "characters": characters?.toJson(),
        "stories": stories?.toJson(),
        "events": events?.toJson(),
      };
}

class Characters {
  final int? available;
  final String? collectionUri;
  final List<Series>? items;
  final int? returned;

  Characters({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  factory Characters.fromJson(Map<String, dynamic> json) => Characters(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: json["items"] == null
            ? []
            : List<Series>.from(json["items"]!.map((x) => Series.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "returned": returned,
      };
}

class Series {
  final String? resourceUri;
  final String? name;

  Series({
    this.resourceUri,
    this.name,
  });

  factory Series.fromJson(Map<String, dynamic> json) => Series(
        resourceUri: json["resourceURI"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
      };
}

class Creators {
  final int? available;
  final String? collectionUri;
  final List<CreatorsItem>? items;
  final int? returned;

  Creators({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  factory Creators.fromJson(Map<String, dynamic> json) => Creators(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: json["items"] == null
            ? []
            : List<CreatorsItem>.from(
                json["items"]!.map((x) => CreatorsItem.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "returned": returned,
      };
}

class CreatorsItem {
  final String? resourceUri;
  final String? name;
  final String? role;

  CreatorsItem({
    this.resourceUri,
    this.name,
    this.role,
  });

  factory CreatorsItem.fromJson(Map<String, dynamic> json) => CreatorsItem(
        resourceUri: json["resourceURI"],
        name: json["name"],
        role: json["role"],
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
        "role": role,
      };
}

class DateElement {
  final DateType? type;
  final DateEnum? date;

  DateElement({
    this.type,
    this.date,
  });

  factory DateElement.fromJson(Map<String, dynamic> json) => DateElement(
        type: dateTypeValues.map[json["type"]]!,
        date: dateEnumValues.map[json["date"]]!,
      );

  Map<String, dynamic> toJson() => {
        "type": dateTypeValues.reverse[type],
        "date": dateEnumValues.reverse[date],
      };
}

enum DateEnum {
  THE_00011130_T00_00000500,
  THE_19610101_T00_00000500,
  THE_20081009_T00_00000400,
  THE_20091105_T00_00000500,
  THE_20161102_T00_00000400,
  THE_20291231_T00_00000500
}

final dateEnumValues = EnumValues({
  "-0001-11-30T00:00:00-0500": DateEnum.THE_00011130_T00_00000500,
  "1961-01-01T00:00:00-0500": DateEnum.THE_19610101_T00_00000500,
  "2008-10-09T00:00:00-0400": DateEnum.THE_20081009_T00_00000400,
  "2009-11-05T00:00:00-0500": DateEnum.THE_20091105_T00_00000500,
  "2016-11-02T00:00:00-0400": DateEnum.THE_20161102_T00_00000400,
  "2029-12-31T00:00:00-0500": DateEnum.THE_20291231_T00_00000500
});

enum DateType { FOC_DATE, ONSALE_DATE }

final dateTypeValues = EnumValues(
    {"focDate": DateType.FOC_DATE, "onsaleDate": DateType.ONSALE_DATE});

enum DiamondCode { AUG082435, EMPTY, OCT090594 }

final diamondCodeValues = EnumValues({
  "AUG082435": DiamondCode.AUG082435,
  "": DiamondCode.EMPTY,
  "OCT090594": DiamondCode.OCT090594
});

enum Ean { EMPTY, THE_978078512178753999, THE_978078513704752499 }

final eanValues = EnumValues({
  "": Ean.EMPTY,
  "9780785 121787 53999": Ean.THE_978078512178753999,
  "9780785 137047 52499": Ean.THE_978078513704752499
});

class Thumbnail {
  final String? path;
  final Extension? extension;

  Thumbnail({
    this.path,
    this.extension,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        path: json["path"],
        extension: extensionValues.map[json["extension"]]!,
      );

  Map<String, dynamic> toJson() => {
        "path": path,
        "extension": extensionValues.reverse[extension],
      };
}

enum Extension { JPG }

final extensionValues = EnumValues({"jpg": Extension.JPG});

class Price {
  final PriceType? type;
  final double? price;

  Price({
    this.type,
    this.price,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        type: priceTypeValues.map[json["type"]]!,
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "type": priceTypeValues.reverse[type],
        "price": price,
      };
}

enum PriceType { PRINT_PRICE }

final priceTypeValues = EnumValues({"printPrice": PriceType.PRINT_PRICE});

class Stories {
  final int? available;
  final String? collectionUri;
  final List<StoriesItem>? items;
  final int? returned;

  Stories({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  factory Stories.fromJson(Map<String, dynamic> json) => Stories(
        available: json["available"],
        collectionUri: json["collectionURI"],
        items: json["items"] == null
            ? []
            : List<StoriesItem>.from(
                json["items"]!.map((x) => StoriesItem.fromJson(x))),
        returned: json["returned"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "collectionURI": collectionUri,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "returned": returned,
      };
}

class StoriesItem {
  final String? resourceUri;
  final String? name;
  final ItemType? type;

  StoriesItem({
    this.resourceUri,
    this.name,
    this.type,
  });

  factory StoriesItem.fromJson(Map<String, dynamic> json) => StoriesItem(
        resourceUri: json["resourceURI"],
        name: json["name"],
        type: itemTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "resourceURI": resourceUri,
        "name": name,
        "type": itemTypeValues.reverse[type],
      };
}

enum ItemType { COVER, EMPTY, INTERIOR_STORY, LETTERS, RECAP }

final itemTypeValues = EnumValues({
  "cover": ItemType.COVER,
  "": ItemType.EMPTY,
  "interiorStory": ItemType.INTERIOR_STORY,
  "letters": ItemType.LETTERS,
  "recap": ItemType.RECAP
});

class TextObject {
  final TextObjectType? type;
  final Language? language;
  final String? text;

  TextObject({
    this.type,
    this.language,
    this.text,
  });

  factory TextObject.fromJson(Map<String, dynamic> json) => TextObject(
        type: textObjectTypeValues.map[json["type"]]!,
        language: languageValues.map[json["language"]]!,
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "type": textObjectTypeValues.reverse[type],
        "language": languageValues.reverse[language],
        "text": text,
      };
}

enum Language { EN_US }

final languageValues = EnumValues({"en-us": Language.EN_US});

enum TextObjectType { ISSUE_PREVIEW_TEXT, ISSUE_SOLICIT_TEXT }

final textObjectTypeValues = EnumValues({
  "issue_preview_text": TextObjectType.ISSUE_PREVIEW_TEXT,
  "issue_solicit_text": TextObjectType.ISSUE_SOLICIT_TEXT
});

class Url {
  final UrlType? type;
  final String? url;

  Url({
    this.type,
    this.url,
  });

  factory Url.fromJson(Map<String, dynamic> json) => Url(
        type: urlTypeValues.map[json["type"]]!,
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "type": urlTypeValues.reverse[type],
        "url": url,
      };
}

enum UrlType { DETAIL }

final urlTypeValues = EnumValues({"detail": UrlType.DETAIL});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
