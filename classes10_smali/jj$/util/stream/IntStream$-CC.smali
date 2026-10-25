.class public final synthetic Ljj$/util/stream/IntStream$-CC;
.super Ljava/lang/Object;
.source "IntStream.java"


# direct methods
.method public static $default$dropWhile(Ljj$/util/stream/IntStream;Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/IntStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Ljj$/util/stream/IntStream;)Ljava/util/Iterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->iterator()Ljj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Ljj$/util/stream/IntStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->parallel()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Ljj$/util/stream/IntStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->sequential()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Ljj$/util/stream/IntStream;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Ljj$/util/stream/IntStream;Ljava/util/function/IntPredicate;)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljj$/util/Spliterator$OfInt;ZLjava/util/function/IntPredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/IntStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/IntStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/IntStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/IntStream;

    return-object v0
.end method

.method public static builder()Ljj$/util/stream/IntStream$Builder;
    .registers 1

    new-instance v0, Ljj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljj$/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljj$/util/stream/IntStream;Ljj$/util/stream/IntStream;)Ljj$/util/stream/IntStream;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Streams$ConcatSpliterator$OfInt;

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljj$/util/stream/IntStream;->spliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljj$/util/Spliterator$OfInt;Ljj$/util/Spliterator$OfInt;)V

    invoke-interface {p0}, Ljj$/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljj$/util/stream/IntStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v1

    invoke-static {p0, p1}, Ljj$/util/stream/Streams;->composedClose(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/IntStream;

    return-object v2
.end method

.method public static empty()Ljj$/util/stream/IntStream;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptyIntSpliterator()Ljj$/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/IntSupplier;)Ljj$/util/stream/IntStream;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(ILjava/util/function/IntPredicate;Ljava/util/function/IntUnaryOperator;)Ljj$/util/stream/IntStream;
    .registers 10

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/IntStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move v5, p0

    move-object v6, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/IntStream$2;-><init>(JILjava/util/function/IntUnaryOperator;ILjava/util/function/IntPredicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILjava/util/function/IntUnaryOperator;)Ljj$/util/stream/IntStream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/IntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/IntStream$1;-><init>(JILjava/util/function/IntUnaryOperator;I)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(I)Ljj$/util/stream/IntStream;
    .registers 3

    new-instance v0, Ljj$/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljj$/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([I)Ljj$/util/stream/IntStream;
    .registers 2

    invoke-static {p0}, Ljj$/util/DesugarArrays;->stream([I)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Ljj$/util/stream/IntStream;
    .registers 4

    if-lt p0, p1, :cond_7

    invoke-static {}, Ljj$/util/stream/IntStream$-CC;->empty()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(II)Ljj$/util/stream/IntStream;
    .registers 4

    if-le p0, p1, :cond_7

    invoke-static {}, Ljj$/util/stream/IntStream$-CC;->empty()Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Ljj$/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljj$/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->intStream(Ljj$/util/Spliterator$OfInt;Z)Ljj$/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
