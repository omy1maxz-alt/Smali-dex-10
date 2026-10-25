.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;
.super Ljava/lang/Object;
.source "YoutubeParsingHelper.java"


# static fields
.field public static final CONTENT_CHECK_OK:Ljava/lang/String; = "contentCheckOk"

.field private static final CONTENT_PLAYBACK_NONCE_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

.field public static final CPN:Ljava/lang/String; = "cpn"

.field private static final C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_IOS_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_WEB_PATTERN:Ljava/util/regex/Pattern;

.field public static final DISABLE_PRETTY_PRINT_PARAMETER:Ljava/lang/String; = "prettyPrint=false"

.field private static final FEED_BASE_CHANNEL_ID:Ljava/lang/String; = "https://www.youtube.com/feeds/videos.xml?channel_id="

.field private static final FEED_BASE_USER:Ljava/lang/String; = "https://www.youtube.com/feeds/videos.xml?user="

.field private static final GOOGLE_URLS:Ljava/util/Set;

.field private static final INITIAL_DATA_REGEXES:[Ljava/lang/String;

.field private static final INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

.field private static final INVIDIOUS_URLS:Ljava/util/Set;

.field public static final RACY_CHECK_OK:Ljava/lang/String; = "racyCheckOk"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoId"

.field public static final YOUTUBEI_V1_GAPIS_URL:Ljava/lang/String; = "https://youtubei.googleapis.com/youtubei/v1/"

.field public static final YOUTUBEI_V1_URL:Ljava/lang/String; = "https://www.youtube.com/youtubei/v1/"

.field private static final YOUTUBE_MUSIC_URL:Ljava/lang/String; = "https://music.youtube.com"

.field private static final YOUTUBE_URLS:Ljava/util/Set;

.field private static clientVersion:Ljava/lang/String;

.field private static clientVersionExtracted:Z

.field private static consentAccepted:Z

.field private static hardcodedClientVersionValid:Ljava/util/Optional;

.field private static numberGenerator:Ljava/util/Random;

.field private static youtubeMusicClientVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Ljava/util/Optional;

    const-string v1, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    const-string v2, "client.version=([0-9\\.]+)"

    const-string v3, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    const-string v1, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    const-string v2, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    const-string v1, "&c=WEB"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    nop

    const-string v1, "&c=WEB_EMBEDDED_PLAYER"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "&c=ANDROID"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "&c=IOS"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "&c=VISIONOS"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "m.google."

    const-string v2, "www.google."

    const-string v3, "google."

    invoke-static {v3, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->GOOGLE_URLS:Ljava/util/Set;

    const-string v28, "invidious.moomoo.me"

    const-string v29, "yt.cyberhost.uk"

    const-string v2, "invidio.us"

    const-string v3, "dev.invidio.us"

    const-string v4, "www.invidio.us"

    const-string v5, "redirect.invidious.io"

    const-string v6, "invidious.snopyta.org"

    const-string v7, "yewtu.be"

    const-string v8, "tube.connect.cafe"

    const-string v9, "tubus.eduvid.org"

    const-string v10, "invidious.kavin.rocks"

    const-string v11, "invidious.site"

    const-string v12, "invidious-us.kavin.rocks"

    const-string v13, "piped.kavin.rocks"

    const-string v14, "vid.mint.lgbt"

    const-string v15, "invidiou.site"

    const-string v16, "invidious.fdn.fr"

    const-string v17, "invidious.048596.xyz"

    const-string v18, "invidious.zee.li"

    const-string v19, "vid.puffyan.us"

    const-string v20, "ytprivate.com"

    const-string v21, "invidious.namazso.eu"

    const-string v22, "invidious.silkky.cloud"

    const-string v23, "ytb.trom.tf"

    const-string v24, "invidious.exonip.de"

    const-string v25, "inv.riverside.rocks"

    const-string v26, "invidious.blamefran.net"

    const-string v27, "y.com.cm"

    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    const-string v1, "m.youtube.com"

    const-string v2, "music.youtube.com"

    const-string v3, "youtube.com"

    const-string v4, "www.youtube.com"

    invoke-static {v3, v4, v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport2;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    sput-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->consentAccepted:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDurationToInt(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_15

    :cond_a
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->removeNonDigitCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v2

    return v0

    :cond_15
    :goto_15
    return v0
.end method

.method public static defaultAlertsCheck(Lcom/grack/nanojson/JsonObject;)V
    .registers 8

    const-string v0, "alerts"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_81

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "alertRenderer"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    if-eqz v2, :cond_62

    const-string v4, "This account has been terminated"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string v4, "This channel was removed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    :cond_43
    const-string v4, ".*violat(ed|ion|ing).*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string v4, "infringement"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    goto :goto_5a

    :cond_54
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5a
    :goto_5a
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;

    invoke-direct {v4, v2, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/exceptions/AccountTerminatedException$Reason;)V

    throw v4

    :cond_62
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got error: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_81
    return-void
.end method

.method public static extractAudioTrackType(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {}, Ljj$/util/Base64;->getUrlDecoder()Ljj$/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljj$/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->parseFrom([B)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$XTags;->getXtagsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_34} :catch_83

    nop

    if-nez v1, :cond_38

    return-object v0

    :cond_38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    :cond_3f
    goto :goto_72

    :sswitch_40
    const-string v2, "original"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    goto :goto_73

    :sswitch_4a
    const-string v2, "dubbed-auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x2

    goto :goto_73

    :sswitch_54
    const-string v2, "secondary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x4

    goto :goto_73

    :sswitch_5e
    const-string v2, "dubbed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    goto :goto_73

    :sswitch_68
    const-string v2, "descriptive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x3

    goto :goto_73

    :goto_72
    const/4 v2, -0x1

    :goto_73
    packed-switch v2, :pswitch_data_9c

    return-object v0

    :pswitch_77  #0x4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->SECONDARY:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0

    :pswitch_7a  #0x3
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DESCRIPTIVE:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0

    :pswitch_7d  #0x1, 0x2
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->DUBBED:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0

    :pswitch_80  #0x0
    sget-object v0, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;->ORIGINAL:Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    return-object v0

    :catch_83
    move-exception v1

    return-object v0

    nop

    :sswitch_data_86
    .sparse-switch
        -0x66ca7b34 -> :sswitch_68
        -0x4ebc9b10 -> :sswitch_5e
        -0x30bb8e8c -> :sswitch_54
        -0x1e91cf94 -> :sswitch_4a
        0x523289d1 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_80  #00000000
        :pswitch_7d  #00000001
        :pswitch_7d  #00000002
        :pswitch_7a  #00000003
        :pswitch_77  #00000004
    .end packed-switch
.end method

.method public static extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "webcache.googleusercontent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "cache:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_16
    return-object p0
.end method

.method private static extractClientVersionFromHtmlSearchResultsPage()V
    .registers 8

    sget-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "https://www.youtube.com/results?search_query=&ucbcb=1"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v1

    const-string v2, "https://www.youtube.com/results?search_query=&ucbcb=1"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getInitialData(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "responseContext"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "serviceTrackingParams"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v4

    const-string v5, "CSI"

    const-string v6, "cver"

    invoke-static {v4, v5, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    const/4 v6, 0x1

    if-nez v5, :cond_46

    :try_start_3c
    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_44
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_3c .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move-exception v5

    :cond_46
    :goto_46
    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    const-string v5, "ECATCHER"

    const-string v7, "client.version"

    invoke-static {v4, v5, v7}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    :cond_58
    sget-object v5, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    if-eqz v5, :cond_5f

    sput-boolean v6, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    return-void

    :cond_5f
    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    invoke-direct {v5, v6}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static extractClientVersionFromSwJs()V
    .registers 6

    sget-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "https://www.youtube.com/sw.js"

    const-string v1, "https://www.youtube.com"

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v2

    const-string v3, "https://www.youtube.com/sw.js"

    invoke-virtual {v2, v3, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v2

    :try_start_1b
    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_24
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_1b .. :try_end_24} :catch_28

    nop

    sput-boolean v4, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    return-void

    :catch_28
    move-exception v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "Could not extract YouTube WEB InnerTube client version from sw.js"

    invoke-direct {v4, v5, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static extractCookieValue(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "set-cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_11

    const-string v1, ""

    return-object v1

    :cond_11
    const-string v1, ""

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    const-string v6, "="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, ";"

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_40
    goto :goto_17

    :cond_41
    return-object v1
.end method

.method public static extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMyMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeGenreMixId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMixId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_38

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from playlist id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video id could not be determined from genre mix id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v1, "Video id could not be determined from empty playlist id"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    move-object v0, p0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_e
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_1b
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    :goto_34
    return-object v0
.end method

.method public static generateConsentCookie()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isConsentAccepted()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CAISAiAD"

    goto :goto_b

    :cond_9
    const-string v0, "CAE="

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOCS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateContentPlaybackNonce()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x10

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/RandomStringFromAlphabetGenerator;->generate(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateTParameter()Ljava/lang/String;
    .registers 3

    const/16 v0, 0xc

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v2, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/RandomStringFromAlphabetGenerator;->generate(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    :goto_6
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.android.youtube/21.03.36 (Linux; U; Android 15; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 6

    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "X-YouTube-Client-Name"

    const-string v3, "X-YouTube-Client-Version"

    invoke-static {v2, v0, v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getClientInfoHeaders()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://www.youtube.com"

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "1"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getClientVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractClientVersionFromSwJs()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractClientVersionFromHtmlSearchResultsPage()V

    :goto_13
    sget-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    :cond_1a
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isHardcodedClientVersionValid()Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "2.20260120.01.00"

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    return-object v0

    :cond_27
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;

    const-string v1, "Could not get YouTube WEB client version"

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getClientVersionFromServiceTrackingParam(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCookieHeader()Ljava/util/Map;
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateConsentCookie()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-static {v1, v0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "user/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_22

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/feeds/videos.xml?user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    const-string v0, "channel/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "https://www.youtube.com/feeds/videos.xml?channel_id="

    if-eqz v1, :cond_42

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstCollaborator(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .registers 4

    :try_start_0
    const-string v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "listItemViewModel"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1
    :try_end_11
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljj$/util/stream/DesugarCollectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getInitialData(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_11
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_11} :catch_14
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get ytInitialData"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIosUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    :goto_6
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.ios.youtube/21.03.2(iPhone16,2; U; CPU iOS 18_7_2 like Mac OS X; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJsonPostResponse(Ljava/lang/String;Ljava/util/List;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .registers 9

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "?prettyPrint=false"

    goto :goto_2c

    :cond_d
    const-string v1, "&"

    invoke-static {v1, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_de$DeTimeFormat$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&prettyPrint=false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.youtube.com/youtubei/v1/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2, p3}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    return-object v2
.end method

.method public static getJsonPostResponse(Ljava/lang/String;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .registers 7

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/youtubei/v1/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?prettyPrint=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    return-object v1
.end method

.method public static getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Origin"

    const-string v2, "Referer"

    invoke-static {v1, v0, v2, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticBackport3;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->isString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;
    .registers 14

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "simpleText"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_e4

    const-string v6, "navigationEndpoint"

    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_82

    nop

    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_82

    invoke-static {v6}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<a href=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\">"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_82
    const-string v6, "bold"

    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_94

    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_94

    move v6, v8

    goto :goto_95

    :cond_94
    move v6, v9

    :goto_95
    const-string v7, "italics"

    invoke-virtual {v4, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a5

    invoke-virtual {v4, v7}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a5

    move v7, v8

    goto :goto_a6

    :cond_a5
    move v7, v9

    :goto_a6
    const-string v10, "strikethrough"

    invoke-virtual {v4, v10}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    invoke-virtual {v4, v10}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b5

    goto :goto_b6

    :cond_b5
    move v8, v9

    :goto_b6
    if-eqz v6, :cond_bd

    const-string v9, "<b>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bd
    if-eqz v7, :cond_c4

    const-string v9, "<i>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c4
    if-eqz v8, :cond_cb

    const-string v9, "<s>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cb
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_d5

    const-string v9, "</s>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d5
    if-eqz v7, :cond_dc

    const-string v9, "</i>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_dc
    if-eqz v6, :cond_e3

    const-string v9, "</b>"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e3
    goto :goto_e7

    :cond_e4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e7
    goto/16 :goto_2b

    :cond_e9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_ff

    const-string v3, "\\n"

    const-string v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " {2}"

    const-string v4, " &nbsp;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_ff
    return-object v2
.end method

.method public static getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not extract text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .registers 4

    :try_start_0
    const-string v0, "thumbnail"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "thumbnails"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get thumbnails from InfoItem"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 12

    const-string v0, "urlEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "https://www.youtube.com"

    const/4 v3, 0x0

    const-string v4, "url"

    if-eqz v1, :cond_90

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://www.youtube.com/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    const-string v1, "/redirect?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v6, v3

    :goto_39
    if-ge v6, v5, :cond_5c

    aget-object v7, v1, v6

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    const-string v10, "q"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_59

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->decodeUrlUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_5c
    goto :goto_90

    :cond_5d
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    return-object v0

    :cond_66
    const-string v1, "/channel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v1, "/user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v1, "/watch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    :cond_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_90
    :goto_90
    const-string v0, "browseEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "https://www.youtube.com/playlist?list="

    if-eqz v1, :cond_ff

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "canonicalBaseUrl"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "browseId"

    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e7

    const-string v7, "UC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.youtube.com/channel/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c8
    const-string v7, "VL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e7

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_e7
    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ff

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_ff
    const-string v0, "watchEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "playlistId"

    if-eqz v1, :cond_15e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.youtube.com/watch?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "videoId"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13c

    const-string v2, "&list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13c
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "startTimeSeconds"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_159

    const-string v2, "&t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15e
    const-string v0, "watchPlaylistEndpoint"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_181

    nop

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_181
    const-string v0, "showDialogCommand"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19f

    :try_start_189
    const-string v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v3, "listItemViewModel.rendererContext.commandContext.onTap.innertubeCommand"

    invoke-static {v1, v3}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v2
    :try_end_19d
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_189 .. :try_end_19d} :catch_19e

    return-object v2

    :catch_19e
    move-exception v0

    :cond_19f
    const-string v0, "commandMetadata"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "webCommandMetadata"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1cd
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUrlFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "runs"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v1

    :cond_15
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/grack/nanojson/JsonObject;

    const-string v5, "navigationEndpoint"

    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    return-object v4

    :cond_37
    goto :goto_19

    :cond_38
    return-object v1
.end method

.method public static getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode()I

    move-result v0

    const/16 v1, 0x194

    const-string v2, "\")"

    if-eq v0, v1, :cond_87

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_7f

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www.youtube.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/oops"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "/error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    goto :goto_48

    :cond_40
    new-instance v2, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;

    const-string v4, "Content unavailable"

    invoke-direct {v2, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_48
    :goto_48
    const-string v3, "Content-Type"

    invoke-virtual {p0, v3}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_7e

    :cond_5d
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->latestUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got HTML document, expected JSON response (latest url was: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7e
    :goto_7e
    return-object v0

    :cond_7f
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "JSON response is too short"

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_87
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not found (\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVisionOsUserAgent(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_6

    :cond_4
    sget-object v0, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    :goto_6
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.visionos.youtube/1.02(RealityDevice14,1; U; CPU visionOS 25_6_0 like Mac OS X; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisitorDataFromInnertube(Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    invoke-static {p1, p2, p0, p5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v2

    if-eqz p6, :cond_1b

    const-string v3, "guide"

    goto :goto_1d

    :cond_1b
    const-string v3, "visitor_id"

    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?prettyPrint=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Lcom/gold/youtube/om7753/extractor/downloader/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "responseContext"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    const-string v3, "visitorData"

    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    return-object v2

    :cond_53
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "Could not get visitorData"

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getYouTubeHeaders()Ljava/util/Map;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientInfoHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->generateConsentCookie()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getYoutubeMusicClientVersion()Ljava/lang/String;
    .registers 6

    const-string v0, "https://music.youtube.com/sw.js"

    sget-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0

    :cond_d
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isHardcodedYoutubeMusicClientVersionValid()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "1.20260121.03.00"

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0

    :cond_1a
    const/4 v1, 0x1

    move-object v2, v0

    :try_start_1c
    const-string v3, "https://music.youtube.com"

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v0, v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_54

    :catch_37
    move-exception v0

    const-string v2, "https://music.youtube.com/?ucbcb=1"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v3

    const-string v4, "https://music.youtube.com/?ucbcb=1"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    :goto_54
    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getYoutubeMusicHeaders()Ljava/util/Map;
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    const-string v1, "https://music.youtube.com"

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "67"

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static hasArtistOrVerifiedIconBadgeAttachment(Lcom/grack/nanojson/JsonArray;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static isAndroidStreamingUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isConsentAccepted()Z
    .registers 1

    sget-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->consentAccepted:Z

    return v0
.end method

.method public static isGoogleURL(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->GOOGLE_URLS:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda15;-><init>(Ljava/net/URL;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_18} :catch_19

    return v2

    :catch_19
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method public static isHardcodedClientVersionValid()Z
    .registers 9

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_15
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "client"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "hl"

    const-string v2, "en-GB"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "gl"

    const-string v2, "GB"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientName"

    const-string v2, "WEB"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "clientVersion"

    const-string v2, "2.20260120.01.00"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "platform"

    const-string v3, "DESKTOP"

    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "utcOffsetMinutes"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "request"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "internalExperimentFlags"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "useSsl"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "lockedSafetyMode"

    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    const-string v1, "fetchLiveState"

    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v2

    const-string v5, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    invoke-virtual {v2, v5, v1, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1388

    if-le v7, v8, :cond_ee

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_ee

    move v3, v4

    :cond_ee
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sput-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Ljava/util/Optional;

    sget-object v3, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method public static isHardcodedYoutubeMusicClientVersionValid()Z
    .registers 8

    const-string v0, "https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false"

    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "context"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "client"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "clientName"

    const-string v3, "WEB_REMIX"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "clientVersion"

    const-string v3, "1.20260121.03.00"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "hl"

    const-string v3, "en-GB"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "gl"

    const-string v3, "GB"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "platform"

    const-string v3, "DESKTOP"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "utcOffsetMinutes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "request"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "internalExperimentFlags"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "useSsl"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "lockedSafetyMode"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v2, "input"

    const-string v5, ""

    invoke-virtual {v1, v2, v5}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    move-result-object v1

    check-cast v1, Lcom/grack/nanojson/JsonStringWriter;

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    const-string v5, "https://music.youtube.com"

    invoke-static {v5}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v5, "67"

    const-string v6, "2.20260120.01.00"

    invoke-static {v5, v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v5

    const-string v6, "https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false"

    invoke-virtual {v5, v6, v2, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x1f4

    if-le v6, v7, :cond_ed

    invoke-virtual {v5}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_ed

    move v3, v4

    :cond_ed
    return v3
.end method

.method public static isHooktubeURL(Ljava/net/URL;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hooktube.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isInvidiousURL(Ljava/net/URL;)Z
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isIosStreamingUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVerified(Lcom/grack/nanojson/JsonArray;)Z
    .registers 6

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/grack/nanojson/JsonObject;

    const-string v4, "metadataBadgeRenderer"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    const-string v4, "BADGE_STYLE_TYPE_VERIFIED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    :cond_37
    const/4 v0, 0x1

    return v0

    :cond_39
    goto :goto_c

    :cond_3a
    return v1
.end method

.method public static isVisionOsStreamingUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWebEmbeddedPlayerStreamingUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWebStreamingUrl(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->isMatch(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isY2ubeURL(Ljava/net/URL;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "y2u.be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeGenreMixId(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "RDGMEM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeMixId(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "RD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeMusicMixId(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "RDAMVM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "RDCLAK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public static isYoutubeMyMixId(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "RDMM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isYoutubeServiceURL(Ljava/net/URL;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www.youtube-nocookie.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "youtu.be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public static isYoutubeURL(Ljava/net/URL;)Z
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$extractAudioTrackType$10(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)Z
    .registers 3

    const-string v0, "acont"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getClientVersionFromServiceTrackingParam$1(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .registers 4

    const-string v0, "service"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getClientVersionFromServiceTrackingParam$2(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .registers 2

    const-string v0, "params"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getClientVersionFromServiceTrackingParam$3(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .registers 4

    const-string v0, "key"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getClientVersionFromServiceTrackingParam$4(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .registers 2

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getClientVersionFromServiceTrackingParam$5(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getImagesFromThumbnailsArray$6(Lcom/grack/nanojson/JsonObject;)Z
    .registers 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getImagesFromThumbnailsArray$7(Lcom/grack/nanojson/JsonObject;)Lcom/gold/youtube/om7753/extractor/Image;
    .registers 6

    const-string v0, "height"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/gold/youtube/om7753/extractor/Image;

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-virtual {p0, v4, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;->fromHeight(I)Lcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;

    move-result-object v4

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/gold/youtube/om7753/extractor/Image;-><init>(Ljava/lang/String;IILcom/gold/youtube/om7753/extractor/Image$ResolutionLevel;)V

    return-object v2
.end method

.method static synthetic lambda$hasArtistOrVerifiedIconBadgeAttachment$8(Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    const-string v0, "clientResource"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "imageName"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHECK_CIRCLE_FILLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "AUDIO_BADGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "MUSIC_FILLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v1, 0x1

    :goto_28
    return v1
.end method

.method static synthetic lambda$hasArtistOrVerifiedIconBadgeAttachment$9(Lcom/grack/nanojson/JsonObject;)Z
    .registers 3

    const-string v0, "element"

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "imageType"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "sources"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isGoogleURL$0(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseDurationString(Ljava/lang/String;)I
    .registers 8

    const-string v0, ".*\\d.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "SHORTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    :cond_11
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error duration string contains no digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_37
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3d
    nop

    const/16 v1, 0x18

    const/16 v2, 0x3c

    const/4 v3, 0x1

    filled-new-array {v1, v2, v2, v3}, [I

    move-result-object v1

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    if-ltz v2, :cond_62

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4e
    array-length v5, v0

    if-ge v4, v5, :cond_61

    add-int v5, v4, v2

    aget v5, v1, v5

    aget-object v6, v0, v4

    invoke-static {v6}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->convertDurationToInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    mul-int v3, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_61
    return v3

    :cond_62
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error duration string with unknown format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static prepareDesktopJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;
    .registers 6

    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hl"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gl"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "clientName"

    const-string v2, "WEB"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "originalUrl"

    const-string v2, "https://www.youtube.com"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "DESKTOP"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "utcOffsetMinutes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "internalExperimentFlags"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "useSsl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "lockedSafetyMode"

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static prepareJsonBuilder(Lcom/gold/youtube/om7753/extractor/localization/Localization;Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .registers 9

    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientName:Ljava/lang/String;

    const-string v2, "clientName"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientVersion:Ljava/lang/String;

    const-string v2, "clientVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientScreen:Ljava/lang/String;

    if-eqz v1, :cond_33

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->clientScreen:Ljava/lang/String;

    const-string v2, "clientScreen"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_33
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->platform:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->platform:Ljava/lang/String;

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_42
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    if-eqz v1, :cond_51

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->clientInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$ClientInfo;->visitorData:Ljava/lang/String;

    const-string v2, "visitorData"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_51
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceMake:Ljava/lang/String;

    if-eqz v1, :cond_60

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceMake:Ljava/lang/String;

    const-string v2, "deviceMake"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_60
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceModel:Ljava/lang/String;

    if-eqz v1, :cond_6f

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->deviceModel:Ljava/lang/String;

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_6f
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osName:Ljava/lang/String;

    if-eqz v1, :cond_7e

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osName:Ljava/lang/String;

    const-string v2, "osName"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_7e
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osVersion:Ljava/lang/String;

    if-eqz v1, :cond_8d

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget-object v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->osVersion:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    :cond_8d
    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->androidSdkVersion:I

    if-lez v1, :cond_9c

    iget-object v1, p2, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo;->deviceInfo:Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;

    iget v1, v1, Lcom/gold/youtube/om7753/extractor/services/youtube/InnertubeClientRequestInfo$DeviceInfo;->androidSdkVersion:I

    const-string v2, "androidSdkVersion"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    :cond_9c
    const-string v1, "hl"

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gl"

    invoke-virtual {v1, v3, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "utcOffsetMinutes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    if-eqz p3, :cond_cb

    const-string v1, "thirdParty"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "embedUrl"

    invoke-virtual {v1, v2, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    :cond_cb
    const-string v1, "request"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "internalExperimentFlags"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "useSsl"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    const-string v2, "lockedSafetyMode"

    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    return-object v0
.end method

.method public static resetClientVersion()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    return-void
.end method

.method public static setConsentAccepted(Z)V
    .registers 1

    sput-boolean p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->consentAccepted:Z

    return-void
.end method

.method public static setNumberGenerator(Ljava/util/Random;)V
    .registers 1

    sput-object p0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    return-void
.end method
