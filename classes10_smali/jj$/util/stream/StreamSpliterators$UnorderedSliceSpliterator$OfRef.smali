.class final Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljj$/util/Spliterator;
.implements Ljava/util/function/Consumer;


# instance fields
.field tmpSlot:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljj$/util/Spliterator;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljj$/util/Spliterator;JJ)V

    return-void
.end method

.method constructor <init>(Ljj$/util/Spliterator;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 11

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v1

    move-object v2, v1

    sget-object v3, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v1, v3, :cond_49

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v2, v1, :cond_43

    if-nez v0, :cond_1c

    new-instance v1, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    iget v3, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    invoke-direct {v1, v3}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    move-object v0, v1

    goto :goto_1f

    :cond_1c
    invoke-virtual {v0}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->reset()V

    :goto_1f
    const-wide/16 v3, 0x0

    :cond_21
    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v1, v0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    move-wide v3, v5

    iget v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->chunkSize:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-ltz v1, :cond_21

    :cond_34
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_3b

    return-void

    :cond_3b
    invoke-virtual {p0, v3, v4}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v5

    invoke-virtual {v0, p1, v5, v6}, Ljj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava/util/function/Consumer;J)V

    goto :goto_4

    :cond_43
    iget-object v1, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v1, p1}, Ljj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void

    :cond_49
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

.method protected makeSpliterator(Ljj$/util/Spliterator;)Ljj$/util/Spliterator;
    .registers 3

    new-instance v0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljj$/util/Spliterator;

    invoke-interface {v0, p0}, Ljj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    :cond_15
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_3

    iget-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_29
    return v2
.end method
