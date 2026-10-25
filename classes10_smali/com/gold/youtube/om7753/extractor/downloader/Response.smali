.class public Lcom/gold/youtube/om7753/extractor/downloader/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final latestUrl:Ljava/lang/String;

.field private final responseBody:Ljava/lang/String;

.field private final responseCode:I

.field private final responseHeaders:Ljava/util/Map;

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode:I

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseMessage:Ljava/lang/String;

    if-nez p3, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p3

    :goto_f
    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    if-nez p4, :cond_16

    const-string v0, ""

    goto :goto_17

    :cond_16
    move-object v0, p4

    :goto_17
    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->latestUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3e

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3e
    goto :goto_a

    :cond_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public latestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->latestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public responseBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public responseCode()I
    .registers 2

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseCode:I

    return v0
.end method

.method public responseHeaders()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public responseMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Response;->responseMessage:Ljava/lang/String;

    return-object v0
.end method
