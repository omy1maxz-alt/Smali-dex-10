.class final Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;
.super Ljava/lang/Object;
.source "YoutubeJavaScriptExtractor.java"


# static fields
.field private static final BASE_JS_PLAYER_URL_FORMAT:Ljava/lang/String; = "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js"

.field private static final EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTPS:Ljava/lang/String; = "https:"

.field private static final IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "player\\\\/([a-z0-9]{8})\\\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    return-object p0
.end method

.method private static downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v0

    sget-object v1, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {v0, p0, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not get JavaScript base player\'s code"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static extractJavaScriptPlayerCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptUrlWithIframeResource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v2

    :catch_12
    move-exception v0

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptUrlWithEmbedWatchPage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->cleanJavaScriptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1b
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_20} :catch_26

    nop

    invoke-static {v2}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->downloadJavaScriptCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_26
    move-exception v3

    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v5, "The extracted and built JavaScript URL is invalid"

    invoke-direct {v4, v5, v3}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static extractJavaScriptUrlWithEmbedWatchPage(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/embed/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v1

    sget-object v2, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {v1, v0, v2}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_64

    nop

    invoke-static {v1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    const-string v3, "script"

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    const-string v4, "name"

    const-string v5, "player/base"

    invoke-virtual {v3, v4, v5}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    const-string v6, "src"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "base.js"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    return-object v6

    :cond_53
    goto :goto_38

    :cond_54
    :try_start_54
    sget-object v4, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v4, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_5a
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_54 .. :try_end_5a} :catch_5b

    return-object v4

    :catch_5b
    move-exception v4

    new-instance v5, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v6, "Embedded watch page didn\'t provide JavaScript base player\'s URL"

    invoke-direct {v5, v6, v4}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_64
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not fetch embedded watch page"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static extractJavaScriptUrlWithIframeResource()Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "https://www.youtube.com/iframe_api"

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getDownloader()Lcom/gold/youtube/om7753/extractor/downloader/Downloader;

    move-result-object v1

    sget-object v2, Lcom/gold/youtube/om7753/extractor/localization/Localization;->DEFAULT:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    invoke-virtual {v1, v0, v2}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody()Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_2b

    nop

    :try_start_11
    sget-object v2, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeJavaScriptExtractor;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lcom/gold/youtube/om7753/extractor/utils/Parser;->matchGroup1(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catch Lcom/gold/youtube/om7753/extractor/utils/Parser$RegexException; {:try_start_11 .. :try_end_21} :catch_22

    return-object v3

    :catch_22
    move-exception v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v4, "IFrame resource didn\'t provide JavaScript base player\'s hash"

    invoke-direct {v3, v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not fetch IFrame resource"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
