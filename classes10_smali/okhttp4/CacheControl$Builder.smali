.class public final Lokhttp4/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field immutable:Z

.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp4/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp4/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp4/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lokhttp4/CacheControl;
    .registers 2

    new-instance v0, Lokhttp4/CacheControl;

    invoke-direct {v0, p0}, Lokhttp4/CacheControl;-><init>(Lokhttp4/CacheControl$Builder;)V

    return-object v0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp4/CacheControl$Builder;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    :goto_13
    iput p1, p0, Lokhttp4/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0

    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public noCache()Lokhttp4/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/CacheControl$Builder;->noCache:Z

    return-object p0
.end method

.method public noStore()Lokhttp4/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/CacheControl$Builder;->noStore:Z

    return-object p0
.end method

.method public onlyIfCached()Lokhttp4/CacheControl$Builder;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp4/CacheControl$Builder;->onlyIfCached:Z

    return-object p0
.end method
