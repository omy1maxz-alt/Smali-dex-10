.class public final Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private automaticLocalizationHeader:Z

.field private dataToSend:[B

.field private final headers:Ljava/util/Map;

.field private httpMethod:Ljava/lang/String;

.field private localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

.field private url:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetautomaticLocalizationHeader(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdataToSend(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)[B
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheaders(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethttpMethod(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocalization(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Lcom/gold/youtube/om7753/extractor/localization/Localization;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->addHeaders(Ljava/lang/String;Ljava/util/List;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addHeaders(Ljava/lang/String;Ljava/util/List;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_10
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public automaticLocalizationHeader(Z)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->automaticLocalizationHeader:Z

    return-object p0
.end method

.method public build()Lcom/gold/youtube/om7753/extractor/downloader/Request;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/extractor/downloader/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gold/youtube/om7753/extractor/downloader/Request;-><init>(Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;Lcom/gold/youtube/om7753/extractor/downloader/Request-IA;)V

    return-object v0
.end method

.method public dataToSend([B)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 3

    const-string v0, "GET"

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public head(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 3

    const-string v0, "HEAD"

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    return-object p0
.end method

.method public httpMethod(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method public localization(Lcom/gold/youtube/om7753/extractor/localization/Localization;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->localization:Lcom/gold/youtube/om7753/extractor/localization/Localization;

    return-object p0
.end method

.method public post(Ljava/lang/String;[B)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 4

    const-string v0, "POST"

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->httpMethod:Ljava/lang/String;

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->dataToSend:[B

    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->setHeaders(Ljava/lang/String;Ljava/util/List;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHeaders(Ljava/lang/String;Ljava/util/List;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/downloader/Request$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
