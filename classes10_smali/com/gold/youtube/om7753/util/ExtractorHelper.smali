.class public final Lcom/gold/youtube/om7753/util/ExtractorHelper;
.super Ljava/lang/Object;
.source "ExtractorHelper.java"


# static fields
.field private static final CACHE:Lcom/gold/youtube/om7753/util/InfoCache;

.field private static final TAG:Ljava/lang/String; = "ExtractorHelper"


# direct methods
.method public static synthetic $r8$lambda$D8JDdFvQDg93zxEQQFr4hvD5oV4(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/MaybeSource;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->lambda$loadFromCache$14(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/MaybeSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NMvNL4m4yrP-lyvKKI0uMCd0L6Y(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lcom/gold/youtube/om7753/extractor/Info;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->lambda$checkCache$13(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lcom/gold/youtube/om7753/extractor/Info;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UHmd9OAJ5gCq7xkks-N0rjZXmyY(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/Page;)Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->lambda$getMoreChannelItems$5(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/Page;)Lcom/gold/youtube/om7753/extractor/ListExtractor$InfoItemsPage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YTHJjScxCJNO1LTCqs3IKy35iyY(ILjava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->lambda$getStreamInfo$3(ILjava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/gold/youtube/om7753/util/InfoCache;->getInstance()Lcom/gold/youtube/om7753/util/InfoCache;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/ExtractorHelper;->CACHE:Lcom/gold/youtube/om7753/util/InfoCache;

    return-void
.end method

.method private static capitalizeIfAllUppercase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_16

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_13

    return-object p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object p0

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static checkCache(ZILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;
    .registers 6

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->checkServiceId(I)V

    new-instance v0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V

    invoke-virtual {p4, v0}, Lio/reactivex/rxjava3/core/Single;->doOnSuccess(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p4

    if-eqz p0, :cond_14

    sget-object p0, Lcom/gold/youtube/om7753/util/ExtractorHelper;->CACHE:Lcom/gold/youtube/om7753/util/InfoCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/util/InfoCache;->removeInfo(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V

    goto :goto_28

    :cond_14
    invoke-static {p1, p2, p3}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->loadFromCache(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    invoke-virtual {p4}, Lio/reactivex/rxjava3/core/Single;->toMaybe()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    invoke-static {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->concat(Lio/reactivex/rxjava3/core/MaybeSource;Lio/reactivex/rxjava3/core/MaybeSource;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Flowable;->firstElement()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->toSingle()Lio/reactivex/rxjava3/core/Single;

    move-result-object p4

    :goto_28
    return-object p4
.end method

.method private static checkServiceId(I)V
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "serviceId is NO_SERVICE_ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;
    .registers 5

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->checkServiceId(I)V

    sget-object v0, Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;->STREAM:Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;

    new-instance v1, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    invoke-static {p2, p0, p1, v0, v1}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->checkCache(ZILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public static isCached(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->loadFromCache(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->blockingGet()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic lambda$checkCache$13(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;Lcom/gold/youtube/om7753/extractor/Info;)V
    .registers 5

    sget-object v0, Lcom/gold/youtube/om7753/util/ExtractorHelper;->CACHE:Lcom/gold/youtube/om7753/util/InfoCache;

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/gold/youtube/om7753/util/InfoCache;->putInfo(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/Info;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V

    return-void
.end method

.method private static synthetic lambda$getStreamInfo$3(ILjava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;
    .registers 2

    invoke-static {p0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getService(I)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getInfo(Lcom/gold/youtube/om7753/extractor/StreamingService;Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$loadFromCache$14(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/MaybeSource;
    .registers 4

    sget-object v0, Lcom/gold/youtube/om7753/util/ExtractorHelper;->CACHE:Lcom/gold/youtube/om7753/util/InfoCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/util/InfoCache;->getFromKey(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lcom/gold/youtube/om7753/extractor/Info;

    move-result-object p0

    sget-boolean p1, Lcom/gold/youtube/om7753/App;->debug:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/gold/youtube/om7753/util/ExtractorHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadFromCache() called, info > "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    if-eqz p0, :cond_27

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Maybe;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-static {}, Lio/reactivex/rxjava3/core/Maybe;->empty()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method

.method private static loadFromCache(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)Lio/reactivex/rxjava3/core/Maybe;
    .registers 4

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->checkServiceId(I)V

    new-instance v0, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/util/ExtractorHelper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;Lcom/gold/youtube/om7753/extractor/InfoItem$InfoType;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Maybe;->defer(Lio/reactivex/rxjava3/functions/Supplier;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    return-object p0
.end method
