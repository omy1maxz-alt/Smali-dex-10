.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeTrendingMusicLinkHandlerFactory.java"


# static fields
.field public static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;

.field public static final KIOSK_ID:Ljava/lang/String; = "trending_music"

.field private static final PATH:Ljava/lang/String; = "/charts/TrendingVideos"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingMusicLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "trending_music"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "https://charts.youtube.com/charts/TrendingVideos/RightNow"

    return-object v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_5} :catch_2e

    nop

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "charts.youtube.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/charts/TrendingVideos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    :goto_2d
    return v0

    :catch_2e
    move-exception v1

    return v0
.end method
