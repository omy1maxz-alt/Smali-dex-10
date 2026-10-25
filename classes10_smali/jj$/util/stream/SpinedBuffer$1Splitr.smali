.class Ljj$/util/stream/SpinedBuffer$1Splitr;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljj$/util/Spliterator;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:[Ljava/lang/Object;

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljj$/util/stream/SpinedBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljj$/util/stream/SpinedBuffer;

    return-void
.end method

.method constructor <init>(Ljj$/util/stream/SpinedBuffer;IIII)V
    .registers 7

    iput-object p1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iput p3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput p4, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iput p5, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    nop

    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-nez v0, :cond_15

    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer;->curChunk:[Ljava/lang/Object;

    goto :goto_19

    :cond_15
    iget-object v0, p1, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v0, v0, p2

    :goto_19
    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .registers 6

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_28

    :cond_e
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->priorElementCount:[J

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    int-to-long v3, v0

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_28
    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_57

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_57

    :cond_15
    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    :goto_19
    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v1, v2, :cond_32

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v2, v2, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    :goto_23
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_2e
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_32
    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    goto :goto_43

    :cond_3b
    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v1, v1, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    aget-object v1, v1, v2

    :goto_43
    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    :goto_45
    if-ge v0, v2, :cond_4f

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_4f
    iget v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iput v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    :cond_57
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

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_18

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    if-ge v0, v1, :cond_17

    goto :goto_18

    :cond_17
    return v2

    :cond_18
    :goto_18
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4a

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    if-eqz v0, :cond_4a

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-gt v0, v1, :cond_4a

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    :cond_4a
    return v3
.end method

.method public trySplit()Ljj$/util/Spliterator;
    .registers 9

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    if-ge v0, v1, :cond_32

    new-instance v2, Ljj$/util/stream/SpinedBuffer$1Splitr;

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget v4, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    array-length v7, v0

    invoke-direct/range {v2 .. v7}, Ljj$/util/stream/SpinedBuffer$1Splitr;-><init>(Ljj$/util/stream/SpinedBuffer;IIII)V

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->this$0:Ljj$/util/stream/SpinedBuffer;

    iget-object v0, v0, Ljj$/util/stream/SpinedBuffer;->spine:[[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    return-object v2

    :cond_32
    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splSpineIndex:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_54

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->lastSpineElementFence:I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_43

    return-object v2

    :cond_43
    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splChunk:[Ljava/lang/Object;

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljj$/util/DesugarArrays;->spliterator([Ljava/lang/Object;II)Ljj$/util/Spliterator;

    move-result-object v1

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$1Splitr;->splElementIndex:I

    return-object v1

    :cond_54
    return-object v2
.end method
