.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeTrendingLinkHandlerFactory.java"


# static fields
.field public static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingLinkHandlerFactory;

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

    const-string v0, "Trending"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "https://www.youtube.com/feed/trending"

    return-object v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_5} :catch_28

    nop

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_1c
    const-string v3, "/feed/trending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    nop

    :goto_27
    return v0

    :catch_28
    move-exception v1

    return v0
.end method
