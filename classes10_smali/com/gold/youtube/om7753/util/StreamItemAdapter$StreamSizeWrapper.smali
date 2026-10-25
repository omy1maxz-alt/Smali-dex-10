.class public Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;
.super Ljava/lang/Object;
.source "StreamItemAdapter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;


# instance fields
.field private final streamSizes:[J

.field private final streamsList:Ljava/util/List;

.field private final unknownSize:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7jaIGPBoCEbghtU-8dkKhOBpPjI(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->lambda$fetchSizeForWrapper$0(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->EMPTY:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    if-nez p2, :cond_12

    const-string p1, "--.-"

    goto :goto_14

    :cond_12
    const-string p1, "Unknown content"

    :goto_14
    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->unknownSize:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->resetSizes()V

    return-void
.end method

.method public static empty()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->EMPTY:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    return-object v0
.end method

.method public static fetchSizeForWrapper(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/rxjava3/core/Single;
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Single;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method private formatSize(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_b

    invoke-static {p1, p2}, Lus/shandian/giga/util/Utility;->formatBytes(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->unknownSize:Ljava/lang/String;

    return-object p1
.end method

.method private static synthetic lambda$fetchSizeForWrapper$0(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;
    .registers 9

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    invoke-virtual {p0, v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(Lcom/gold/youtube/om7753/extractor/stream/Stream;)J

    move-result-wide v3

    const-wide/16 v5, -0x2

    cmp-long v7, v3, v5

    if-lez v7, :cond_20

    goto :goto_9

    :cond_20
    invoke-static {}, Lcom/gold/youtube/om7753/DownloaderImpl;->getInstance()Lcom/gold/youtube/om7753/DownloaderImpl;

    move-result-object v1

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gold/youtube/om7753/DownloaderImpl;->getContentLength(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->setSize(Lcom/gold/youtube/om7753/extractor/stream/Stream;J)V

    const/4 v1, 0x1

    goto :goto_9

    :cond_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFormattedSize(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->formatSize(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSizeInBytes(I)J
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSizeInBytes(Lcom/gold/youtube/om7753/extractor/stream/Stream;)J
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    iget-object v1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getStreamsList()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    return-object v0
.end method

.method public resetSizes()V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    const-wide/16 v1, -0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public setSize(Lcom/gold/youtube/om7753/extractor/stream/Stream;J)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamSizes:[J

    iget-object v1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->streamsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    aput-wide p2, v0, p1

    return-void
.end method
