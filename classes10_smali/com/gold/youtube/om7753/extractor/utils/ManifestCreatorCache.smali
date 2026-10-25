.class public final Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;
.super Ljava/lang/Object;
.source "ManifestCreatorCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CLEAR_FACTOR:D = 0.75

.field public static final DEFAULT_MAXIMUM_SIZE:I = 0x7fffffff


# instance fields
.field private clearFactor:D

.field private final concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private maximumSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private keepNewestEntries(I)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sub-int/2addr v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$keepNewestEntries$0(ILjava/util/ArrayList;Ljava/util/Map$Entry;)V
    .registers 5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p0, :cond_16

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_16
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getFirst()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->setFirst(Ljava/io/Serializable;)V

    :goto_28
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/io/Serializable;)Z
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/io/Serializable;)Lcom/gold/youtube/om7753/extractor/utils/Pair;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    return-object v0
.end method

.method public getClearFactor()D
    .registers 3

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-wide v0
.end method

.method public getMaximumSize()J
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method synthetic lambda$keepNewestEntries$1$com-gold-youtube-om7753-extractor-utils-ManifestCreatorCache(Ljava/util/Map$Entry;)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public put(Ljava/io/Serializable;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    :cond_25
    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    iget-object v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/gold/youtube/om7753/extractor/utils/Pair;-><init>(Ljava/io/Serializable;Ljava/io/Serializable;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/utils/Pair;

    if-nez v0, :cond_40

    const/4 v1, 0x0

    goto :goto_44

    :cond_40
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/utils/Pair;->getSecond()Ljava/io/Serializable;

    move-result-object v1

    :goto_44
    return-object v1
.end method

.method public reset()V
    .registers 1

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clear()V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->resetClearFactor()V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->resetMaximumSize()V

    return-void
.end method

.method public resetClearFactor()V
    .registers 3

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    iput-wide v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-void
.end method

.method public resetMaximumSize()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    return-void
.end method

.method public setClearFactor(D)V
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, p1, v0

    if-gez v0, :cond_f

    iput-wide p1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid clear factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumSize(I)V
    .registers 6

    if-lez p1, :cond_22

    iget v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    if-ge p1, v0, :cond_1f

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x1

    :goto_1c
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->keepNewestEntries(I)V

    :cond_1f
    iput p1, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid maximum size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-wide v0, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->clearFactor:D

    iget v2, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->maximumSize:I

    iget-object v3, p0, Lcom/gold/youtube/om7753/extractor/utils/ManifestCreatorCache;->concurrentHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManifestCreatorCache[clearFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maximumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", concurrentHashMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
