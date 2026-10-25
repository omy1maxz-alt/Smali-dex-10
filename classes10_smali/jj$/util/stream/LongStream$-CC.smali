.class public final synthetic Ljj$/util/stream/LongStream$-CC;
.super Ljava/lang/Object;
.source "LongStream.java"


# direct methods
.method public static $default$dropWhile(Ljj$/util/stream/LongStream;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/LongStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Ljj$/util/stream/LongStream;)Ljava/util/Iterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->iterator()Ljj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Ljj$/util/stream/LongStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->parallel()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Ljj$/util/stream/LongStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->sequential()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Ljj$/util/stream/LongStream;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Ljj$/util/stream/LongStream;Ljava/util/function/LongPredicate;)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljj$/util/Spliterator$OfLong;ZLjava/util/function/LongPredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/LongStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/LongStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/LongStream;

    return-object v0
.end method

.method public static builder()Ljj$/util/stream/LongStream$Builder;
    .registers 1

    new-instance v0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Ljj$/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljj$/util/stream/LongStream;Ljj$/util/stream/LongStream;)Ljj$/util/stream/LongStream;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Streams$ConcatSpliterator$OfLong;

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Ljj$/util/stream/LongStream;->spliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljj$/util/Spliterator$OfLong;Ljj$/util/Spliterator$OfLong;)V

    invoke-interface {p0}, Ljj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljj$/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    const/4 v1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v1, 0x1

    :goto_23
    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v1

    invoke-static {p0, p1}, Ljj$/util/stream/Streams;->composedClose(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/LongStream;

    return-object v2
.end method

.method public static empty()Ljj$/util/stream/LongStream;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptyLongSpliterator()Ljj$/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/LongSupplier;)Ljj$/util/stream/LongStream;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(JLjava/util/function/LongPredicate;Ljava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
    .registers 12

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/stream/LongStream$2;-><init>(JILjava/util/function/LongUnaryOperator;JLjava/util/function/LongPredicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLjava/util/function/LongUnaryOperator;)Ljj$/util/stream/LongStream;
    .registers 10

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/LongStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/LongStream$1;-><init>(JILjava/util/function/LongUnaryOperator;J)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(J)Ljj$/util/stream/LongStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([J)Ljj$/util/stream/LongStream;
    .registers 2

    invoke-static {p0}, Ljj$/util/DesugarArrays;->stream([J)Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(JJ)Ljj$/util/stream/LongStream;
    .registers 13

    cmp-long v0, p0, p2

    if-ltz v0, :cond_9

    invoke-static {}, Ljj$/util/stream/LongStream$-CC;->empty()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_9
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2a

    sub-long v0, p2, p0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Ljj$/nio/file/TempFileHelper$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljj$/util/stream/LongStream$-CC;->range(JJ)Ljj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljj$/util/stream/LongStream$-CC;->range(JJ)Ljj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljj$/util/stream/LongStream$-CC;->concat(Ljj$/util/stream/LongStream;Ljj$/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    :cond_2a
    new-instance v3, Ljj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 p0, 0x0

    invoke-static {v3, p0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Ljj$/util/stream/LongStream;
    .registers 13

    cmp-long v0, p0, p2

    if-lez v0, :cond_9

    invoke-static {}, Ljj$/util/stream/LongStream$-CC;->empty()Ljj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    :cond_9
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gtz v6, :cond_2b

    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Ljj$/nio/file/TempFileHelper$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljj$/util/stream/LongStream$-CC;->range(JJ)Ljj$/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljj$/util/stream/LongStream$-CC;->rangeClosed(JJ)Ljj$/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljj$/util/stream/LongStream$-CC;->concat(Ljj$/util/stream/LongStream;Ljj$/util/stream/LongStream;)Ljj$/util/stream/LongStream;

    move-result-object v2

    return-object v2

    :cond_2b
    new-instance v3, Ljj$/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x1

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljj$/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 p0, 0x0

    invoke-static {v3, p0}, Ljj$/util/stream/StreamSupport;->longStream(Ljj$/util/Spliterator$OfLong;Z)Ljj$/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method
