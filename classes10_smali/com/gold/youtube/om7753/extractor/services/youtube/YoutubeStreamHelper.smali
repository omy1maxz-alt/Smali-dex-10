.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;
.super Ljava/lang/Object;
.source "YoutubeStreamHelper.java"


# static fields
.field private static final BASE_YT_DESKTOP_WATCH_URL:Ljava/lang/String; = "https://www.youtube.com/watch?v="

.field private static final PLAYER:Ljava/lang/String; = "player"

.field private static final PO_TOKEN:Ljava/lang/String; = "poToken"

.field private static final SERVICE_INTEGRITY_DIMENSIONS:Ljava/lang/String; = "serviceIntegrityDimensions"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPlaybackContext(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V
    .registers 5

    const-string v0, "playbackContext"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "contentPlaybackContext"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "signatureTimestamp"

    invoke-virtual {v0, v1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "referer"

    invoke-virtual {v0, v1, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    return-void
.end method

.method private static addPoToken(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;)V
    .registers 4

    const-string v0, "serviceIntegrityDimensions"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "poToken"

    invoke-virtual {v0, v1, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    return-void
.end method

.method private static addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "videoId"

    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    if-eqz p2, :cond_c

    const-string v0, "cpn"

    invoke-virtual {p0, v0, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_c
    const-string v0, "contentCheckOk"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v2, "racyCheckOk"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    return-void
.end method

.method public static getAndroidPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;
    .registers 12

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofAndroidClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v2, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->visitorData:Ljava/lang/String;

    iput-object v2, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    nop

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->playerRequestPoToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addPoToken(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v3, p1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    return-object v5
.end method

.method public static getAndroidReelPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 12

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofAndroidClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    nop

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getAndroidUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v7, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const-string v4, "https://youtubei.googleapis.com/youtubei/v1/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    const-string p1, "playerRequest"

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    invoke-static {p0, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    const-string v4, "disablePlayerResponse"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://youtubei.googleapis.com/youtubei/v1/reel/reel_item_watch?prettyPrint=false&t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&$fields=playerResponse"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    invoke-virtual {v5, v4, v3, p1, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    const-string v6, "playerResponse"

    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    return-object v5
.end method

.method public static getIosPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;)Lcom/grack/nanojson/JsonObject;
    .registers 13

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofIosClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    nop

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getIosUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v7, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    if-nez p4, :cond_1c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    move-object v2, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_20

    :cond_1c
    move-object v2, p0

    move-object v1, p1

    iget-object p0, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->visitorData:Ljava/lang/String;

    :goto_20
    iput-object p0, v7, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_31

    iget-object p1, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->playerRequestPoToken:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addPoToken(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;)V

    :cond_31
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    invoke-virtual {v5, v4, v3, p1, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    return-object v5
.end method

.method private static getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;
    .registers 5

    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "User-Agent"

    const-string v3, "X-Goog-Api-Format-Version"

    invoke-static {v2, v0, v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getVisionOsPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 12

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofVisionOsClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    nop

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisionOsUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->getMobileClientHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iget-object v7, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateTParameter()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://youtubei.googleapis.com/youtubei/v1/player?prettyPrint=false&t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    invoke-virtual {v5, v4, v3, p1, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    return-object v5
.end method

.method public static getWebEmbeddedPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;I)Lcom/grack/nanojson/JsonObject;
    .registers 14

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebEmbeddedPlayerClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    const-string v1, "56"

    const-string v2, "1.20260122.01.00"

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "https://www.youtube.com"

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    if-nez p4, :cond_3b

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_3f

    :cond_3b
    move-object v1, p0

    move-object v2, p1

    iget-object p0, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->visitorData:Ljava/lang/String;

    :goto_3f
    iput-object p0, v7, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    invoke-static {v1, v2, v0, v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v5, p5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addPlaybackContext(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;I)V

    if-eqz p4, :cond_52

    iget-object p1, p4, Lcom/gold/youtube/om7753/extractor/services/youtube/PoTokenResult;->playerRequestPoToken:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addPoToken(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;)V

    :cond_52
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v4, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v6

    const-string v7, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false"

    invoke-virtual {v6, v7, v3, p1, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    return-object v6
.end method

.method public static getWebMetadataPlayerResponse(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 11

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->ofWebClient()Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v3

    iget-object v7, v0, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {v1, v2, v0, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeStreamHelper;->addVideoIdCpnAndOkChecks(Lcom/grack/nanojson/JsonBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v4, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,videoDetails.thumbnail.thumbnails,videoDetails.videoId"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    const-string v6, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,videoDetails.thumbnail.thumbnails,videoDetails.videoId"

    invoke-virtual {v5, v6, v3, p0, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v5

    return-object v5
.end method
