.class Ljj$/util/stream/SpinedBuffer$OfInt;
.super Ljj$/util/stream/SpinedBuffer$OfPrimitive;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;-><init>(I)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->preAccept()V

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    aput p1, v0, v1

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5

    check-cast p1, [I

    check-cast p4, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljj$/util/stream/SpinedBuffer$OfInt;->arrayForEach([IIILjava/util/function/IntConsumer;)V

    return-void
.end method

.method protected arrayForEach([IIILjava/util/function/IntConsumer;)V
    .registers 7

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_b

    aget v1, p1, v0

    invoke-interface {p4, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method protected bridge synthetic arrayLength(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, [I

    invoke-virtual {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->arrayLength([I)I

    move-result p1

    return p1
.end method

.method protected arrayLength([I)I
    .registers 3

    array-length v0, p1

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4

    instance-of v0, p1, Ljava/util/function/IntConsumer;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_b
    sget-boolean v0, Ljj$/util/stream/Tripwire;->ENABLED:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "{0} calling SpinedBuffer.OfInt.forEach(Consumer)"

    invoke-static {v0, v1}, Ljj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljj$/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/Consumer;)V

    :goto_1f
    return-void
.end method

.method public get(J)I
    .registers 8

    invoke-virtual {p0, p1, p2}, Ljj$/util/stream/SpinedBuffer$OfInt;->chunkFor(J)I

    move-result v0

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    if-nez v1, :cond_12

    if-nez v0, :cond_12

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->curChunk:Ljava/lang/Object;

    check-cast v1, [I

    long-to-int v2, p1

    aget v1, v1, v2

    return v1

    :cond_12
    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->spine:[Ljava/lang/Object;

    check-cast v1, [[I

    aget-object v1, v1, v0

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->priorElementCount:[J

    aget-wide v3, v2, v0

    sub-long v3, p1, v3

    long-to-int v2, v3

    aget v1, v1, v2

    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->iterator()Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljj$/util/PrimitiveIterator$OfInt;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterators;->iterator(Ljj$/util/Spliterator$OfInt;)Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .registers 3

    new-array v0, p1, [I

    return-object v0
.end method

.method protected bridge synthetic newArrayArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfInt;->newArrayArray(I)[[I

    move-result-object p1

    return-object p1
.end method

.method protected newArrayArray(I)[[I
    .registers 3

    new-array v0, p1, [[I

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator$OfInt;
    .registers 7

    new-instance v0, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    const/4 v4, 0x0

    iget v5, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->elementIndex:I

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljj$/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljj$/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/16 v7, 0xc8

    if-ge v1, v7, :cond_39

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v7, v6, v4

    aput-object v8, v6, v3

    aput-object v9, v6, v2

    const-string v1, "%s[length=%d, chunks=%d]%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_39
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Ljj$/util/stream/SpinedBuffer$OfInt;->spineIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v5

    aput-object v8, v6, v4

    aput-object v9, v6, v3

    aput-object v10, v6, v2

    const-string v2, "%s[length=%d, chunks=%d]%s..."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
