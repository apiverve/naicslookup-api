/// Response models for the NAICS Lookup API.

/// API Response wrapper.
class NaicslookupResponse {
  final String status;
  final dynamic error;
  final NaicslookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  NaicslookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory NaicslookupResponse.fromJson(Map<String, dynamic> json) => NaicslookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? NaicslookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the NAICS Lookup API.

class NaicslookupData {
  num? count;
  List<NaicslookupDataResultsItem>? results;
  List<dynamic>? notFound;

  NaicslookupData({
    this.count,
    this.results,
    this.notFound,
  });

  factory NaicslookupData.fromJson(Map<String, dynamic> json) => NaicslookupData(
      count: json['count'],
      results: (json['results'] as List?)?.map((e) => NaicslookupDataResultsItem.fromJson(e)).toList(),
      notFound: (json['notFound'] as List?)?.cast<dynamic>(),
    );
}

class NaicslookupDataResultsItem {
  String? code;
  String? title;
  num? level;
  String? levelName;
  bool? trilateral;
  String? description;
  NaicslookupDataResultsItemParent? parent;
  List<NaicslookupDataResultsItemHierarchyItem>? hierarchy;
  List<dynamic>? children;
  NaicslookupDataResultsItemSizestandard? sizeStandard;
  List<String>? indexTerms;
  List<NaicslookupDataResultsItemCrossreferencesItem>? crossReferences;
  List<NaicslookupDataResultsItemNaics2017Item>? naics2017;

  NaicslookupDataResultsItem({
    this.code,
    this.title,
    this.level,
    this.levelName,
    this.trilateral,
    this.description,
    this.parent,
    this.hierarchy,
    this.children,
    this.sizeStandard,
    this.indexTerms,
    this.crossReferences,
    this.naics2017,
  });

  factory NaicslookupDataResultsItem.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItem(
      code: json['code'],
      title: json['title'],
      level: json['level'],
      levelName: json['levelName'],
      trilateral: json['trilateral'],
      description: json['description'],
      parent: json['parent'] != null ? NaicslookupDataResultsItemParent.fromJson(json['parent']) : null,
      hierarchy: (json['hierarchy'] as List?)?.map((e) => NaicslookupDataResultsItemHierarchyItem.fromJson(e)).toList(),
      children: (json['children'] as List?)?.cast<dynamic>(),
      sizeStandard: json['sizeStandard'] != null ? NaicslookupDataResultsItemSizestandard.fromJson(json['sizeStandard']) : null,
      indexTerms: (json['indexTerms'] as List?)?.cast<String>(),
      crossReferences: (json['crossReferences'] as List?)?.map((e) => NaicslookupDataResultsItemCrossreferencesItem.fromJson(e)).toList(),
      naics2017: (json['naics2017'] as List?)?.map((e) => NaicslookupDataResultsItemNaics2017Item.fromJson(e)).toList(),
    );
}

class NaicslookupDataResultsItemParent {
  String? code;
  String? title;

  NaicslookupDataResultsItemParent({
    this.code,
    this.title,
  });

  factory NaicslookupDataResultsItemParent.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItemParent(
      code: json['code'],
      title: json['title'],
    );
}

class NaicslookupDataResultsItemHierarchyItem {
  String? code;
  String? title;
  num? level;
  String? levelName;

  NaicslookupDataResultsItemHierarchyItem({
    this.code,
    this.title,
    this.level,
    this.levelName,
  });

  factory NaicslookupDataResultsItemHierarchyItem.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItemHierarchyItem(
      code: json['code'],
      title: json['title'],
      level: json['level'],
      levelName: json['levelName'],
    );
}

class NaicslookupDataResultsItemSizestandard {
  num? revenueMillions;
  dynamic employees;
  String? summary;
  List<dynamic>? exceptions;

  NaicslookupDataResultsItemSizestandard({
    this.revenueMillions,
    this.employees,
    this.summary,
    this.exceptions,
  });

  factory NaicslookupDataResultsItemSizestandard.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItemSizestandard(
      revenueMillions: json['revenueMillions'],
      employees: json['employees'],
      summary: json['summary'],
      exceptions: (json['exceptions'] as List?)?.cast<dynamic>(),
    );
}

class NaicslookupDataResultsItemCrossreferencesItem {
  String? text;
  List<String>? codes;

  NaicslookupDataResultsItemCrossreferencesItem({
    this.text,
    this.codes,
  });

  factory NaicslookupDataResultsItemCrossreferencesItem.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItemCrossreferencesItem(
      text: json['text'],
      codes: (json['codes'] as List?)?.cast<String>(),
    );
}

class NaicslookupDataResultsItemNaics2017Item {
  String? code;
  String? title;

  NaicslookupDataResultsItemNaics2017Item({
    this.code,
    this.title,
  });

  factory NaicslookupDataResultsItemNaics2017Item.fromJson(Map<String, dynamic> json) => NaicslookupDataResultsItemNaics2017Item(
      code: json['code'],
      title: json['title'],
    );
}

class NaicslookupRequest {
  String? code;
  String? search;
  int? level;
  bool? details;
  int? limit;

  NaicslookupRequest({
    this.code,
    this.search,
    this.level,
    this.details,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      if (code != null) 'code': code,
      if (search != null) 'search': search,
      if (level != null) 'level': level,
      if (details != null) 'details': details,
      if (limit != null) 'limit': limit,
    };
}
