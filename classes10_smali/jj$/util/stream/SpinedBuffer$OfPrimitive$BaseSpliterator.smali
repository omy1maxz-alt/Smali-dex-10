.class abstract Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljj$/util/Spliterator$OfPrimitive;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .registers 7

    iput-object p1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iput p3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput p4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iput p5, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    nop

    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    goto :goto_19

    :cond_15
    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_19
    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Ljj$/util/Spliterator$OfPrimitive;
.end method

.method public characteristics()I
    .registers 2

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 6

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_28

    :cond_e
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v3, v0

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_28
    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_52

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_52

    :cond_15
    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    :goto_19
    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v4, v2}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    goto :goto_43

    :cond_3b
    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v1, v1, v2

    :goto_43
    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v2, v1, v0, v3, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    :cond_52
    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/Spliterator$-CC;->$default$forEachRemaining(Ljj$/util/Spliterator;Ljava/util/function/Consumer;)V

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

.method abstract newSpliterator(IIII)Ljj$/util/Spliterator$OfPrimitive;
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_17

    goto :goto_18

    :cond_17
    return v2

    :cond_18
    :goto_18
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4d

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz v0, :cond_4d

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt v0, v1, :cond_4d

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    :cond_4d
    return v3
.end method

.method public trySplit()Ljj$/util/Spliterator$OfPrimitive;
    .registers 7

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v0, v1, :cond_34

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, v4, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v5, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    const/4 v1, 0x0

    iput v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljj$/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    return-object v0

    :cond_34
    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_53

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_45

    return-object v2

    :cond_45
    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v1, v2, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v1

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    return-object v1

    :cond_53
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljj$/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
