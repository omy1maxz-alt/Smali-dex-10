.class public Lokhttp4/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp4/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp4/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp4/Request;Lokhttp4/Response;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    iput-wide p1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    iput-object p4, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    if-eqz p4, :cond_7a

    invoke-virtual {p4}, Lokhttp4/Response;->sentRequestAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    invoke-virtual {p4}, Lokhttp4/Response;->receivedResponseAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {p4}, Lokhttp4/Response;->headers()Lokhttp4/Headers;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Lokhttp4/Headers;->size()I

    move-result p3

    :goto_23
    if-ge p2, p3, :cond_7a

    invoke-virtual {p1, p2}, Lokhttp4/Headers;->name(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2}, Lokhttp4/Headers;->value(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {v1}, Lokhttp4/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iput-object v1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_77

    :cond_3e
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v1}, Lokhttp4/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_77

    :cond_4d
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {v1}, Lokhttp4/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    iput-object v1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_77

    :cond_5e
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_69

    iput-object v1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_77

    :cond_69
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_77

    invoke-static {v1, v0}, Lokhttp4/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    :cond_77
    :goto_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    :cond_7a
    return-void
.end method

.method private cacheResponseAge()J
    .registers 10

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    iget-wide v3, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_11
    iget v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_21

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_21
    iget-wide v3, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v5, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->nowMillis:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private computeFreshnessLifetime()J
    .registers 8

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_19
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_2a

    :cond_28
    iget-wide v3, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    :goto_2a
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-lez v0, :cond_36

    move-wide v1, v5

    :cond_36
    return-wide v1

    :cond_37
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v0}, Lokhttp4/Response;->request()Lokhttp4/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request;->url()Lokhttp4/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/HttpUrl;->query()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_56

    :cond_54
    iget-wide v3, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    :goto_56
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_65

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_65
    return-wide v1
.end method

.method private getCandidate()Lokhttp4/internal/cache/CacheStrategy;
    .registers 14

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-direct {v0, v2, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v0

    :cond_d
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-virtual {v0}, Lokhttp4/Request;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v0}, Lokhttp4/Response;->handshake()Lokhttp4/Handshake;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-direct {v0, v2, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v0

    :cond_25
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-static {v0, v2}, Lokhttp4/internal/cache/CacheStrategy;->isCacheable(Lokhttp4/Response;Lokhttp4/Request;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-direct {v0, v2, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v0

    :cond_37
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-virtual {v0}, Lokhttp4/Request;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->noCache()Z

    move-result v2

    if-nez v2, :cond_11d

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-static {v2}, Lokhttp4/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp4/Request;)Z

    move-result v2

    if-eqz v2, :cond_4d

    goto/16 :goto_11d

    :cond_4d
    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v2}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v2

    invoke-direct {p0}, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v3

    invoke-direct {p0}, Lokhttp4/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v5

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_71

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_71
    invoke-virtual {v0}, Lokhttp4/CacheControl;->minFreshSeconds()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_85

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp4/CacheControl;->minFreshSeconds()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_86

    :cond_85
    move-wide v11, v9

    :goto_86
    invoke-virtual {v2}, Lokhttp4/CacheControl;->mustRevalidate()Z

    move-result v7

    if-nez v7, :cond_9d

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxStaleSeconds()I

    move-result v7

    if-eq v7, v8, :cond_9d

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxStaleSeconds()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    :cond_9d
    invoke-virtual {v2}, Lokhttp4/CacheControl;->noCache()Z

    move-result v0

    if-nez v0, :cond_d6

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_d6

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v0}, Lokhttp4/Response;->newBuilder()Lokhttp4/Response$Builder;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_ba

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v2, v5}, Lokhttp4/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Response$Builder;

    :cond_ba
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_cc

    invoke-direct {p0}, Lokhttp4/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v3

    if-eqz v3, :cond_cc

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v2, v3}, Lokhttp4/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Response$Builder;

    :cond_cc
    new-instance v2, Lokhttp4/internal/cache/CacheStrategy;

    invoke-virtual {v0}, Lokhttp4/Response$Builder;->build()Lokhttp4/Response;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v2

    :cond_d6
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_df

    const-string v2, "If-None-Match"

    goto :goto_ec

    :cond_df
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_ec

    :cond_e6
    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_115

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    :goto_ec
    iget-object v1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-virtual {v1}, Lokhttp4/Request;->headers()Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/Headers;->newBuilder()Lokhttp4/Headers$Builder;

    move-result-object v1

    sget-object v3, Lokhttp4/internal/Internal;->instance:Lokhttp4/internal/Internal;

    invoke-virtual {v3, v1, v2, v0}, Lokhttp4/internal/Internal;->addLenient(Lokhttp4/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-virtual {v0}, Lokhttp4/Request;->newBuilder()Lokhttp4/Request$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp4/Headers$Builder;->build()Lokhttp4/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp4/Request$Builder;->headers(Lokhttp4/Headers;)Lokhttp4/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/Request$Builder;->build()Lokhttp4/Request;

    move-result-object v0

    new-instance v1, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-direct {v1, v0, v2}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v1

    :cond_115
    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-direct {v0, v2, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v0

    :cond_11d
    :goto_11d
    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-direct {v0, v2, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    return-object v0
.end method

.method private static hasConditions(Lokhttp4/Request;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp4/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 3

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp4/Response;

    invoke-virtual {v0}, Lokhttp4/Response;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp4/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method


# virtual methods
.method public get()Lokhttp4/internal/cache/CacheStrategy;
    .registers 3

    invoke-direct {p0}, Lokhttp4/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp4/internal/cache/CacheStrategy;

    move-result-object v0

    iget-object v1, v0, Lokhttp4/internal/cache/CacheStrategy;->networkRequest:Lokhttp4/Request;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lokhttp4/internal/cache/CacheStrategy$Factory;->request:Lokhttp4/Request;

    invoke-virtual {v1}, Lokhttp4/Request;->cacheControl()Lokhttp4/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp4/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lokhttp4/internal/cache/CacheStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lokhttp4/internal/cache/CacheStrategy;-><init>(Lokhttp4/Request;Lokhttp4/Response;)V

    :cond_1a
    return-object v0
.end method
