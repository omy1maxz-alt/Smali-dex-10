.class abstract Ljj$/util/stream/SpinedBuffer$OfPrimitive;
.super Ljj$/util/stream/AbstractSpinedBuffer;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljj$/lang/Iterable;


# instance fields
.field curChunk:Ljava/lang/Object;

.field spine:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljj$/util/stream/AbstractSpinedBuffer;-><init>()V

    const/4 v0, 0x1

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0, p1}, Ljj$/util/stream/AbstractSpinedBuffer;-><init>(I)V

    const/4 v0, 0x1

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->initialChunkPower:I

    shl-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    return-void
.end method

.method private inflateSpine()V
    .registers 4

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez v0, :cond_17

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->newArrayArray(I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    new-array v0, v0, [J

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    aput-object v2, v0, v1

    :cond_17
    return-void
.end method


# virtual methods
.method protected abstract arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V
.end method

.method protected abstract arrayLength(Ljava/lang/Object;)I
.end method

.method public asPrimitiveArray()Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_15

    long-to-int v2, v0

    invoke-virtual {p0, v2}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-object v2

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stream size exceeds max array size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected capacity()J
    .registers 6

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_c

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1f

    :cond_c
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-wide v1, v0, v1

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    move-wide v0, v1

    :goto_1f
    return-wide v0
.end method

.method protected chunkFor(J)I
    .registers 9

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-nez v0, :cond_17

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_44

    const/4 v0, 0x0

    :goto_20
    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-gt v0, v1, :cond_3a

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_37

    return v0

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    :cond_10
    iput v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iput v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    return-void
.end method

.method public copyInto(Ljava/lang/Object;I)V
    .registers 9

    int-to-long v0, p2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->count()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4d

    int-to-long v2, p2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4d

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v3, 0x0

    if-nez v2, :cond_21

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4c

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iget v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    if-ge v2, v4, :cond_41

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    iget-object v5, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v3, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_41
    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    if-lez v2, :cond_4c

    iget-object v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-static {v2, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "does not fit"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final ensureCapacity(J)V
    .registers 13

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_54

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    iget v2, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v2, v2, 0x1

    :goto_f
    cmp-long v3, p1, v0

    if-lez v3, :cond_54

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_2d

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    :cond_2d
    invoke-virtual {p0, v2}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->chunkSize(I)I

    move-result v3

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->newArray(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget-object v5, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v6, v5, v6

    iget-object v5, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    add-int/lit8 v8, v2, -0x1

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v4, v2

    int-to-long v4, v3

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_54
    return-void
.end method

.method public forEach(Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v1, v1, v0

    iget-object v3, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    invoke-virtual {p0, v0, v2, v1, p1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public abstract forEach(Ljava/util/function/Consumer;)V
.end method

.method protected increaseCapacity()V
    .registers 5

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->capacity()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    return-void
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract newArray(I)Ljava/lang/Object;
.end method

.method protected abstract newArrayArray(I)[Ljava/lang/Object;
.end method

.method protected preAccept()V
    .registers 3

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_34

    invoke-direct {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->inflateSpine()V

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_23

    :cond_20
    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->increaseCapacity()V

    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->elementIndex:I

    iget v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    iget-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v1, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spineIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    :cond_34
    return-void
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .registers 2

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->spliterator()Ljj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljj$/util/Spliterator$Wrapper;->convert(Ljj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljj$/util/Spliterator;
    .registers 3

    invoke-virtual {p0}, Ljj$/util/stream/SpinedBuffer$OfPrimitive;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
