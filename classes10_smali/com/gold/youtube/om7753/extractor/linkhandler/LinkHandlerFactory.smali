.class public abstract Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;
.super Ljava/lang/Object;
.source "LinkHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptUrl(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->onAcceptUrl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public fromId(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 4

    const-string v0, "ID cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-direct {v1, v0, v0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public fromId(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 5

    const-string v0, "ID cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-direct {v1, v0, v0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public fromUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 5

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->followGoogleRedirectIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/utils/Utils;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    move-result-object v2

    return-object v2

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The url is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fromUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;
    .registers 6

    const-string v0, "URL cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->acceptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;

    invoke-virtual {p0, v0, p2}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_19
    new-instance v0, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL not accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/extractor/linkhandler/LinkHandlerFactory;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAcceptUrl(Ljava/lang/String;)Z
.end method
