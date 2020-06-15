
/// 기본 Url
final String baseUrl = "http://www.jeju.go.kr/rest";

/// Jeju-OpenAPI-C06
/// 제주 방언색인어사전 정보
final String keywordUrl = "$baseUrl/JejuAdageIndexService/getJejuAdageIndexList";

/// Jeju-OpenAPI-B03
/// 제주 속담사전 정보
final String proverbUrl = "$baseUrl/JejuAdageService/getJejuAdageServiceList";

/// Jeju-OpenAPI-B02
/// 제주 생활방언 정보
final String lifeDialectUrl = "$baseUrl/JejuLifeDialectService/getJejuLifeDialectServiceList";

/// Jeju-OpenAPI-B01
/// 제주 방언사전 정보
final String dictionaryUrl = "$baseUrl/JejuDialectService/getJejuDialectServiceList";
