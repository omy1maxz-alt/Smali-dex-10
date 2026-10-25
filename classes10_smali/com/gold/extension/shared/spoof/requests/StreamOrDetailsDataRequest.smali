.class public Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;
.super Ljava/lang/Object;
.source "StreamOrDetailsDataRequest.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final HTTP_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final MAX_MILLISECONDS_TO_WAIT_FOR_FETCH:I = 0x4e20

.field private static final PAGE_ID_HEADER:Ljava/lang/String; = "X-Goog-PageId"

.field private static final REQUEST_HEADER_KEYS:[Ljava/lang/String;

.field private static volatile authHeadersOverrides:Z

.field private static volatile clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

.field private static final detailsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastSpoofedClientType:Lcom/gold/extension/shared/spoof/ClientType;

.field private static final streamCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final videoId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0qNmhrH8ohXsSQJIW8gGwNwmbi4(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 3

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch stream for client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2FAxcY9744mMZIJr73g-KZ0r0Rc(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Q5aUeNJjvdQL_FfXzUkvIwvuFw(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping client since user is not logged in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " videoId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5S6RFT8K8y8CmEJDxjQJD532r3M(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Including request header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7MWlqECyw7yGbvma4NegWrV62tY(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 3

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching using endpoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-virtual {p0}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->getCompiledRoute()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8gOxKevzSpfK0cqeBcZeIAt4oy0(Ljava/util/List;)Ljava/lang/String;
    .registers 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Available spoof clients: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BW4Rb-bTVQ9G0idZoegLVQWzrO0(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 338
    const-string v0, "Debug: Ignoring unplayable video (%s), reason: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BdSYwfkR84rcGN28Sd3zz5Ubv7E()Ljava/lang/String;
    .registers 1

    .line 475
    const-string v0, "getStreamDetails timed out"

    return-object v0
.end method

.method public static synthetic $r8$lambda$FO2gRsuR9nNlOPG_KMTaZ-wQJuA()Ljava/lang/String;
    .registers 1

    .line 386
    const-string v0, "Failed to write player response for video stream or details"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IxQmJo_VwEH-cQVumRNG7E8KJEA(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of fetch for JavaScript required client, video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", hash: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getJavaScriptHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", variant: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getJavaScriptVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Karjyu68ULaLZI4wZRJ_h3mFIdk()Ljava/lang/String;
    .registers 1

    .line 478
    const-string v0, "getStreamDetails was previously cancelled"

    return-object v0
.end method

.method public static synthetic $r8$lambda$LF44BKhUMyxd9802nOVUNvl0uKU(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic $r8$lambda$SMQZaCwT2phA3bTm2mgHFiCCys8(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SVyBcS8zVfPJecQKmkqoSFWcAo0(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Sa6xWm8uefg3eYqtiDQMmv1No-Y(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 3

    .line 167
    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->fetch(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZzsvrAbh687q9qnrjRgzLCuA0ws(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find JavaScript engine. Skipping JavaScript client: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_PoDxURQuRcXsQeoVjJx2GT9biE()Ljava/lang/String;
    .registers 1

    .line 471
    const-string v0, "Debug: Blocking main thread"

    return-object v0
.end method

.method public static synthetic $r8$lambda$dL9bNIpSAQD7NFo1FEJ03Ie9IbI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not including request header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ffmipKQtXNawpgvR_dP_fWmilq8()Ljava/lang/String;
    .registers 1

    .line 297
    const-string v0, "send failed"

    return-object v0
.end method

.method public static synthetic $r8$lambda$guAyWKb3SeAjE2zgMxGMVfQ5M3A()Ljava/lang/String;
    .registers 1

    .line 480
    const-string v0, "getStreamDetails interrupted"

    return-object v0
.end method

.method public static synthetic $r8$lambda$hdzsw2tkeRtxpz6hF5J5CTduS98(I)[Lcom/gold/extension/shared/spoof/ClientType;
    .registers 1

    .line 80
    new-array p0, p0, [Lcom/gold/extension/shared/spoof/ClientType;

    return-object p0
.end method

.method public static synthetic $r8$lambda$jCLAN6GoFAQ5B_YwWXbD-Jcvwfg()Ljava/lang/String;
    .registers 1

    .line 389
    const-string v0, "Failed to create jsonResponse object for video details"

    return-object v0
.end method

.method public static synthetic $r8$lambda$qqXFtKhn92fceLX82ecnyuxNl2I(ZLjava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 5

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    const-string p0, "stream"

    goto :goto_e

    :cond_c
    const-string p0, "details"

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using client: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vuqrbUEZrMEuHVuFxzsr9KL-jmI()Ljava/lang/String;
    .registers 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Including PAGE_ID_HEADER header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$vvkeMo5Ilay5eUhv_DyAr6ZXEgA()Ljava/lang/String;
    .registers 1

    .line 484
    const-string v0, "getStreamDetails failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vy4V66Kr0Q6EyFc2ytjl3yKX3bs(Lcom/gold/extension/shared/spoof/ClientType;)Z
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    sget-object v0, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_PLAYER_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_REEL_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$zAHoVFsmG1Kz1nC8qUWXpxzNXQc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not including request header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zEvwi5CE3LQCMtCYzPxAmyxxTxA(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching using endpoint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-virtual {p0}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->getCompiledRoute()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 74
    invoke-static {}, Lcom/gold/extension/shared/spoof/ClientType;->values()[Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 75
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda1;-><init>()V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/ClientType;

    sput-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

    .line 106
    const-string v0, "X-GOOG-API-FORMAT-VERSION"

    const-string v1, "X-Goog-Visitor-Id"

    const-string v2, "Authorization"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->REQUEST_HEADER_KEYS:[Ljava/lang/String;

    const/16 v0, 0x32

    .line 130
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->streamCache:Ljava/util/Map;

    .line 133
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    .line 132
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->detailsCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->videoId:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 164
    sget-object v0, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->SEND_SAVE_VIDEO_TO_WATCH_LATER:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne p1, v0, :cond_e

    .line 165
    :cond_b
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_e
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2, p3}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;-><init>(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->submitOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method private static buildPlayerStreamOrDetailsResponse(Lcom/gold/extension/shared/spoof/ClientType;Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .registers 7

    .line 308
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    sget-object v1, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_PLAYER_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-eq v0, v1, :cond_10

    sget-object v2, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_REEL_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne v0, v2, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 314
    :goto_11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    if-eqz v0, :cond_1d

    .line 318
    const-string p1, "spoof stream"

    goto :goto_1f

    :cond_1d
    const-string p1, "get details"

    :goto_1f
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    .line 316
    const-string v0, "Debug: Ignoring empty %s client (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {p1, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    return-object v3

    .line 326
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_31} :catch_78
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_125

    if-eqz v0, :cond_cb

    .line 328
    :try_start_33
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne v0, v1, :cond_3f

    .line 329
    invoke-static {p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    move-result-object v0

    goto :goto_47

    :catchall_3c
    move-exception v0

    goto/16 :goto_11a

    .line 330
    :cond_3f
    invoke-static {p1}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/ReelItemWatchResponseOuterClass$ReelItemWatchResponse;->getPlayerResponse()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    move-result-object v0

    .line 331
    :goto_47
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->getPlayabilityStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getStatus()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 334
    const-string v4, "OK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    .line 335
    const-string v0, "Debug: Ignoring unplayable video (%s)"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    .line 336
    invoke-virtual {v1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayabilityStatus;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 338
    new-instance v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda2;-><init>(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_72
    .catchall {:try_start_33 .. :try_end_72} :catchall_3c

    :cond_72
    if-eqz p1, :cond_7e

    .line 385
    :goto_74
    :try_start_74
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_74 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_125

    return-object v3

    :catch_78
    move-exception p0

    goto/16 :goto_12e

    :catch_7b
    move-exception p0

    goto/16 :goto_137

    :cond_7e
    return-object v3

    .line 344
    :cond_7f
    :try_start_7f
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;

    .line 345
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->hasStreamingData()Z

    move-result v2

    if-nez v2, :cond_94

    .line 346
    const-string v0, "Debug: Ignoring empty streaming data (%s)"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    if-eqz p1, :cond_93

    goto :goto_74

    :cond_93
    return-object v3

    .line 354
    :cond_94
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;->getStreamingData()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;->getAdaptiveFormatsCount()I

    move-result v2

    if-nez v2, :cond_a7

    .line 356
    const-string v0, "Debug: Ignoring empty adaptiveFormat (%s)"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    if-eqz p1, :cond_a6

    goto :goto_74

    :cond_a6
    return-object v3

    .line 360
    :cond_a7
    iget-boolean v2, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    if-eqz v2, :cond_bd

    .line 361
    invoke-static {v0}, Lcom/gold/extension/shared/spoof/js/JavaScriptManager;->getDeobfuscatedStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;

    move-result-object v0

    if-nez v0, :cond_ba

    .line 363
    const-string v0, "Debug: Ignoring obfuscated streamingData (%s)"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    if-eqz p1, :cond_b9

    goto :goto_74

    :cond_b9
    return-object v3

    .line 366
    :cond_ba
    invoke-virtual {v1, v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;->setStreamingData(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$StreamingData$Builder;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse$Builder;

    .line 369
    :cond_bd
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$PlayerResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object v0

    if-eqz p1, :cond_ca

    goto :goto_102

    :cond_ca
    return-object v0

    .line 371
    :cond_cb
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 372
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "\n"

    .line 373
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    sget-object v4, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 378
    const-string v0, "videoDetails"

    .line 379
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "channelId"

    .line 380
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_100
    .catchall {:try_start_7f .. :try_end_100} :catchall_3c

    if-eqz p1, :cond_105

    .line 385
    :goto_102
    :try_start_102
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_105} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_105} :catch_78
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_125

    :cond_105
    return-object v0

    .line 381
    :cond_106
    :try_start_106
    iget-object v1, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    sget-object v2, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->SEND_SAVE_VIDEO_TO_WATCH_LATER:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10e
    .catchall {:try_start_106 .. :try_end_10e} :catchall_3c

    if-eqz v1, :cond_114

    if-eqz p1, :cond_113

    goto :goto_102

    :cond_113
    return-object v0

    :cond_114
    if-eqz p1, :cond_12d

    .line 385
    :try_start_116
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_116 .. :try_end_119} :catch_78
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_125

    goto :goto_12d

    :goto_11a
    if-eqz p1, :cond_124

    .line 326
    :try_start_11c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_120

    goto :goto_124

    :catchall_120
    move-exception p1

    :try_start_121
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_124
    :goto_124
    throw v0
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_125} :catch_7b
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_125} :catch_78
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_125} :catch_125

    .line 392
    :catch_125
    new-instance p1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda5;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_12d
    :goto_12d
    return-object v3

    .line 389
    :goto_12e
    new-instance p1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v3

    .line 386
    :goto_137
    new-instance p1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method private static fetch(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_81

    .line 400
    sget-object p0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 405
    sget-object v4, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_17
    const/4 v8, 0x1

    if-ge v6, v5, :cond_54

    aget-object v9, v4, v6

    .line 406
    new-instance v10, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda17;

    invoke-direct {v10, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda17;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {v10}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    add-int/2addr v7, v8

    .line 409
    sget-object v10, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

    array-length v10, v10

    if-eq v7, v10, :cond_2e

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v8, v1

    .line 411
    :cond_2e
    :goto_2e
    invoke-static {v9, p1, p2, v8}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->send(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 412
    new-instance v10, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda18;

    invoke-direct {v10, v8}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda18;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v10}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz v8, :cond_51

    .line 414
    invoke-static {v9, v8}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->buildPlayerStreamOrDetailsResponse(Lcom/gold/extension/shared/spoof/ClientType;Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_51

    .line 417
    sput-object v9, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->lastSpoofedClientType:Lcom/gold/extension/shared/spoof/ClientType;

    .line 419
    iget-boolean p0, v9, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    if-eqz p0, :cond_50

    .line 420
    new-instance p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda19;

    invoke-direct {p0, p1, v2, v3}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_50
    return-object v8

    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 432
    :cond_54
    sput-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->lastSpoofedClientType:Lcom/gold/extension/shared/spoof/ClientType;

    .line 433
    const-string p0, "youtube_spoof_video_streams_no_clients_toast"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v8}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 435
    sget-object p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

    aget-object p0, p0, v1

    .line 436
    sget-object p1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_64:Lcom/gold/extension/shared/spoof/ClientType;

    if-eq p0, p1, :cond_ad

    sget-object p1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

    if-eq p0, p1, :cond_ad

    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->OAUTH2_REFRESH_TOKEN:Lcom/gold/extension/shared/settings/StringSetting;

    .line 437
    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_ad

    .line 438
    const-string p0, "youtube_spoof_video_streams_no_clients_suggest_vr_toast"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v8}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_ad

    .line 441
    :cond_81
    invoke-static {}, Lcom/gold/extension/shared/spoof/ClientType;->values()[Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_87
    if-ge v4, v3, :cond_ad

    aget-object v5, v2, v4

    .line 442
    iget-object v6, v5, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne v6, p0, :cond_aa

    .line 443
    new-instance v6, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda20;

    invoke-direct {v6, v5}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda20;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {v6}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 446
    invoke-static {v5, p1, p2, v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->send(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 447
    new-instance v7, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda21;

    invoke-direct {v7, v6}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda21;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-static {v7}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    if-eqz v6, :cond_aa

    .line 449
    invoke-static {v5, v6}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->buildPlayerStreamOrDetailsResponse(Lcom/gold/extension/shared/spoof/ClientType;Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_aa
    add-int/lit8 v4, v4, 0x1

    goto :goto_87

    :cond_ad
    :goto_ad
    return-object v0
.end method

.method public static fetchStreamRequest(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->streamCache:Ljava/util/Map;

    new-instance v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;-><init>(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getDetailsRequest(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;-><init>(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    sget-object p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->detailsCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getLastSpoofedClientName()Ljava/lang/String;
    .registers 2

    .line 143
    sget-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->lastSpoofedClientType:Lcom/gold/extension/shared/spoof/ClientType;

    if-nez v0, :cond_7

    .line 145
    const-string v0, "Unknown"

    return-object v0

    .line 147
    :cond_7
    iget-object v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->friendlyName:Ljava/lang/String;

    .line 148
    iget-boolean v0, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    if-eqz v0, :cond_23

    sget-boolean v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->authHeadersOverrides:Z

    if-eqz v0, :cond_23

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Signed in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    return-object v1
.end method

.method public static getStreamRequestForVideoId(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;
    .registers 2

    .line 177
    sget-object v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->streamCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;

    return-object p0
.end method

.method private static handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V
    .registers 3

    if-eqz p2, :cond_5

    .line 189
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 190
    :cond_5
    new-instance p2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-void
.end method

.method private static handleDebugToast(Ljava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V
    .registers 3

    .line 195
    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG_TOAST_ON_ERROR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 196
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 197
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private static send(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 210
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOffMainThread()V

    .line 214
    iget-object v4, v0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    sget-object v5, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_PLAYER_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1f

    sget-object v5, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_REEL_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    if-ne v4, v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v4, v7

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v4, 0x1

    .line 215
    :goto_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    .line 219
    :try_start_25
    invoke-static {v0}, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->getPlayerResponseConnectionFromRoute(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/net/HttpURLConnection;

    move-result-object v10

    const/16 v11, 0x2710

    .line 220
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 221
    invoke-virtual {v10, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 224
    sput-boolean v7, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->authHeadersOverrides:Z

    if-eqz v2, :cond_96

    .line 227
    sget-object v11, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->REQUEST_HEADER_KEYS:[Ljava/lang/String;

    array-length v12, v11

    move v13, v7

    :goto_39
    if-ge v7, v12, :cond_95

    aget-object v14, v11, v7

    .line 228
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_90

    const/16 v16, 0x1

    .line 231
    const-string v6, "Authorization"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 232
    iget-boolean v6, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    if-eqz v6, :cond_75

    .line 233
    invoke-static {}, Lcom/gold/extension/shared/oauth2/requests/OAuth2Requester;->getAndUpdateAccessTokenIfNeeded()Ljava/lang/String;

    move-result-object v15

    .line 234
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 238
    new-instance v6, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda9;

    invoke-direct {v6, v14}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_92

    :catchall_66
    move-exception v0

    goto/16 :goto_14b

    :catch_69
    move-exception v0

    goto/16 :goto_126

    :catch_6c
    move-exception v0

    goto/16 :goto_134

    :catch_6f
    move-exception v0

    goto/16 :goto_13f

    .line 244
    :cond_72
    sput-boolean v16, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->authHeadersOverrides:Z

    goto :goto_82

    .line 246
    :cond_75
    iget-boolean v6, v0, Lcom/gold/extension/shared/spoof/ClientType;->canLogin:Z

    if-nez v6, :cond_82

    .line 247
    new-instance v6, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda12;

    invoke-direct {v6, v14}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_92

    :cond_82
    :goto_82
    move/from16 v13, v16

    .line 253
    :cond_84
    new-instance v6, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda13;

    invoke-direct {v6, v14}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 254
    invoke-virtual {v10, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_90
    const/16 v16, 0x1

    :goto_92
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    :cond_95
    move v7, v13

    :cond_96
    if-eqz v7, :cond_b0

    .line 260
    sget-object v2, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 261
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 262
    const-string v2, "X-Goog-PageId"

    sget-object v6, Lcom/gold/extension/shared/innertube/utils/AuthUtils;->pageId:Ljava/lang/String;

    invoke-virtual {v10, v2, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    .line 265
    :cond_b0
    iget-boolean v2, v0, Lcom/gold/extension/shared/spoof/ClientType;->requireLogin:Z

    if-eqz v2, :cond_c5

    .line 266
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;-><init>(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_bc
    .catch Ljava/net/SocketTimeoutException; {:try_start_25 .. :try_end_bc} :catch_6f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_bc} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_bc} :catch_69
    .catchall {:try_start_25 .. :try_end_bc} :catchall_66

    .line 299
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v5

    .line 272
    :cond_c5
    :goto_c5
    :try_start_c5
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda16;

    invoke-direct {v2, v4, v1, v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda16;-><init>(ZLjava/lang/String;Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 276
    invoke-static/range {p0 .. p1}, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->createInnertubeBody(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 278
    array-length v6, v2

    invoke-virtual {v10, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 279
    invoke-virtual {v10}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 281
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_e6
    .catch Ljava/net/SocketTimeoutException; {:try_start_c5 .. :try_end_e6} :catch_6f
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e6} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_e6} :catch_69
    .catchall {:try_start_c5 .. :try_end_e6} :catchall_66

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_f3

    .line 299
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v10

    :cond_f3
    if-eqz v4, :cond_11d

    .line 288
    :try_start_f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Playback error (App is outdated?) "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " response: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0, v5, v3}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_11d
    .catch Ljava/net/SocketTimeoutException; {:try_start_f5 .. :try_end_11d} :catch_6f
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_11d} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_11d} :catch_69
    .catchall {:try_start_f5 .. :try_end_11d} :catchall_66

    .line 299
    :cond_11d
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    :goto_122
    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_14a

    .line 297
    :goto_126
    :try_start_126
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v2, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_66

    .line 299
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_122

    .line 295
    :goto_134
    :try_start_134
    const-string v2, "Network error"

    invoke-static {v2, v0, v3}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_139
    .catchall {:try_start_134 .. :try_end_139} :catchall_66

    .line 299
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_122

    .line 293
    :goto_13f
    :try_start_13f
    const-string v2, "Connection timeout"

    invoke-static {v2, v0, v3}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->handleConnectionError(Ljava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_144
    .catchall {:try_start_13f .. :try_end_144} :catchall_66

    .line 299
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v0, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    goto :goto_122

    :goto_14a
    return-object v5

    :goto_14b
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1, v8, v9}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 300
    throw v0
.end method

.method public static setClientOrderToUse(Ljava/util/List;Lcom/gold/extension/shared/spoof/ClientType;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            ">;",
            "Lcom/gold/extension/shared/spoof/ClientType;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/shared/spoof/ClientType;

    .line 89
    iget-boolean v2, v1, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/gold/extension/shared/spoof/js/JavaScriptEngineSupport;->supportsJavaScriptEngine()Z

    move-result v2

    if-nez v2, :cond_32

    .line 90
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda7;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_13

    :cond_32
    if-eq v1, p1, :cond_13

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_38
    const/4 p0, 0x0

    .line 99
    new-array p0, p0, [Lcom/gold/extension/shared/spoof/ClientType;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/gold/extension/shared/spoof/ClientType;

    sput-object p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->clientStreamOrderToUse:[Lcom/gold/extension/shared/spoof/ClientType;

    .line 100
    new-instance p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda8;

    invoke-direct {p0, v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method


# virtual methods
.method public fetchIsDone()Z
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p0

    return p0
.end method

.method public getStreamDetails()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    .line 470
    :try_start_1
    sget-object v1, Lcom/gold/extension/shared/settings/BaseSettings;->DEBUG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->fetchIsDone()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isCurrentlyOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 471
    new-instance v1, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_26

    :catch_22
    move-exception v1

    goto :goto_3b

    :catch_24
    move-exception v1

    goto :goto_59

    .line 473
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->future:Ljava/util/concurrent/Future;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_30
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_30} :catch_24
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_30} :catch_50
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_30} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_30} :catch_31

    return-object p0

    :catch_31
    move-exception p0

    .line 484
    new-instance v0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    goto :goto_66

    .line 480
    :goto_3b
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda26;

    invoke-direct {v2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v2, v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 481
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 482
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_66

    .line 478
    :catch_50
    new-instance p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_66

    .line 475
    :goto_59
    new-instance v2, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v2, v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    .line 476
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->future:Ljava/util/concurrent/Future;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_66
    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamOrDetailsDataRequest{videoId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
