.class public abstract Lcom/gold/youtube/om7753/extractor/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/gold/youtube/om7753/extractor/downloader/Request;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
.end method

.method public get(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->get(Ljava/lang/String;Ljava/util/Map;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->newBuilder()Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->get(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->localization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->build()Lcom/gold/youtube/om7753/extractor/downloader/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->execute(Lcom/gold/youtube/om7753/extractor/downloader/Request;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->head(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 4

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->newBuilder()Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->head(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->build()Lcom/gold/youtube/om7753/extractor/downloader/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->execute(Lcom/gold/youtube/om7753/extractor/downloader/Request;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 5

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 6

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/downloader/Request;->newBuilder()Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->post(Ljava/lang/String;[B)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers(Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->localization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->build()Lcom/gold/youtube/om7753/extractor/downloader/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->execute(Lcom/gold/youtube/om7753/extractor/downloader/Request;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_a

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_a
    const-string v1, "Content-Type"

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->post(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v1

    return-object v1
.end method

.method public postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLjava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 11

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 5

    nop

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object v0

    return-object v0
.end method

.method public postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Response;
    .registers 11

    const-string v5, "application/json"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gold/youtube/om7753/extractor/downloader/Downloader;->postWithContentType(Ljava/lang/String;Ljava/util/Map;[BLcom/gold/youtube/om7753/extractor/localization/Localization;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Response;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
