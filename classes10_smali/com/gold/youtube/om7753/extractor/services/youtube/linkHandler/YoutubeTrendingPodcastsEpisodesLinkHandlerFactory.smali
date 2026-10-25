.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeTrendingPodcastsEpisodesLinkHandlerFactory.java"


# static fields
.field public static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;

.field public static final KIOSK_ID:Ljava/lang/String; = "trending_podcasts_episodes"

.field private static final PATH:Ljava/lang/String; = "/podcasts/popularepisodes"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeTrendingPodcastsEpisodesLinkHandlerFactory;

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

    const-string v0, "trending_podcasts_episodes"

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "https://www.youtube.com/podcasts/popularepisodes"

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

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {v1}, Lcom/gold/youtube/om7753/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_18
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/podcasts/popularepisodes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

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
