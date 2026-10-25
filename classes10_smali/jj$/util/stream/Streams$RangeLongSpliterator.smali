.class final Ljj$/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljj$/util/Spliterator$OfLong;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/Streams;

    return-void
.end method

.method private constructor <init>(JJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    iput-wide p1, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    iput-wide p3, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput p5, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    return-void
.end method

.method constructor <init>(JJZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    return-void
.end method

.method private splitPoint(J)J
    .registers 7

    const-wide/32 v0, 0x1000000

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    const-wide/16 v0, 0x2

    goto :goto_c

    :cond_a
    const-wide/16 v0, 0x8

    :goto_c
    div-long v2, p1, v0

    return-wide v2
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .registers 5

    iget-wide v0, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget-wide v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    sub-long/2addr v0, v2

    iget v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iget v4, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    iget-wide v5, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    iput-wide v5, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v5, 0x0

    iput v5, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    :goto_10
    cmp-long v5, v0, v2

    if-gez v5, :cond_1c

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    move-wide v0, v5

    goto :goto_10

    :cond_1c
    if-lez v4, :cond_21

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_21
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2

    const/4 v0, 0x0

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

    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljj$/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$OfLong$-CC;->$default$tryAdvance(Ljj$/util/Spliterator$OfLong;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 9

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->upTo:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_17

    iget-wide v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    iput-wide v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return v4

    :cond_17
    iget v2, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v2, :cond_22

    iput v3, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->last:I

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return v4

    :cond_22
    return v3
.end method

.method public trySplit()Ljj$/util/Spliterator$OfLong;
    .registers 11

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    const/4 v2, 0x0

    goto :goto_1e

    :cond_c
    new-instance v3, Ljj$/util/stream/Streams$RangeLongSpliterator;

    iget-wide v4, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    iget-wide v6, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    invoke-direct {p0, v0, v1}, Ljj$/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Ljj$/util/stream/Streams$RangeLongSpliterator;->from:J

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Ljj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    move-object v2, v3

    :goto_1e
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
