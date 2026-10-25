.class public abstract Ljj$/util/Spliterators$AbstractLongSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    iget v0, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .registers 3

    iget-wide v0, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .registers 2

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getComparator(Ljj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .registers 3

    invoke-static {p0}, Ljj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Ljj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$hasCharacteristics(Ljj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 12

    new-instance v0, Ljj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;

    invoke-direct {v0}, Ljj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;-><init>()V

    iget-wide v1, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_52

    invoke-virtual {p0, v0}, Ljj$/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget v3, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v6, v4, v1

    if-lez v6, :cond_1d

    long-to-int v3, v1

    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    const/high16 v3, 0x2000000

    :cond_23
    new-array v4, v3, [J

    const/4 v5, 0x0

    :cond_26
    iget-wide v6, v0, Ljj$/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_34

    invoke-virtual {p0, v0}, Ljj$/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v6

    if-nez v6, :cond_26

    :cond_34
    iput v5, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->batch:I

    iget-wide v6, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v10, v6, v8

    if-eqz v10, :cond_47

    iget-wide v6, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljj$/util/Spliterators$AbstractLongSpliterator;->est:J

    :cond_47
    new-instance v6, Ljj$/util/Spliterators$LongArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljj$/util/Spliterators$AbstractLongSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Ljj$/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v6

    :cond_52
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
