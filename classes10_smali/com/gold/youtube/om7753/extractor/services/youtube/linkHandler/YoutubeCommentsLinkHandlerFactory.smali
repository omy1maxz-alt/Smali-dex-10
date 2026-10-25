.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;
.super Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;
.source "YoutubeCommentsLinkHandlerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;

    invoke-direct {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;-><init>()V

    sput-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/linkhandler/ListLinkHandlerFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->INSTANCE:Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getInstance()Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.youtube.com/watch?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/linkHandler/YoutubeCommentsLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_3} :catch_8
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    return v0

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1

    :catch_8
    move-exception v0

    throw v0
.end method
