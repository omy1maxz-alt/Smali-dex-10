.class public final synthetic Ljj$/util/stream/DoubleStream$-CC;
.super Ljava/lang/Object;
.source "DoubleStream.java"


# direct methods
.method public static $default$dropWhile(Ljj$/util/stream/DoubleStream;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/DoubleStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public static bridge synthetic $default$iterator(Ljj$/util/stream/DoubleStream;)Ljava/util/Iterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->iterator()Ljj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$parallel(Ljj$/util/stream/DoubleStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->parallel()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$sequential(Ljj$/util/stream/DoubleStream;)Ljj$/util/stream/BaseStream;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->sequential()Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$spliterator(Ljj$/util/stream/DoubleStream;)Ljj$/util/Spliterator;
    .registers 2

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static $default$takeWhile(Ljj$/util/stream/DoubleStream;Ljava/util/function/DoublePredicate;)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljj$/util/Spliterator$OfDouble;ZLjava/util/function/DoublePredicate;)V

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/DoubleStream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/DoubleStream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/DoubleStream;

    return-object v0
.end method

.method public static builder()Ljj$/util/stream/DoubleStream$Builder;
    .registers 1

    new-instance v0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljj$/util/stream/DoubleStream;Ljj$/util/stream/DoubleStream;)Ljj$/util/stream/DoubleStream;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Streams$ConcatSpliterator$OfDouble;

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Ljj$/util/stream/DoubleStream;->spliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljj$/util/Spliterator$OfDouble;Ljj$/util/Spliterator$OfDouble;)V

    invoke-interface {p0}, Ljj$/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljj$/util/stream/DoubleStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v1

    invoke-static {p0, p1}, Ljj$/util/stream/Streams;->composedClose(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/DoubleStream;

    return-object v2
.end method

.method public static empty()Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptyDoubleSpliterator()Ljj$/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/DoubleSupplier;)Ljj$/util/stream/DoubleStream;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(DLjava/util/function/DoublePredicate;Ljava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
    .registers 12

    invoke-static {p3}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoubleStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v7, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Ljj$/util/stream/DoubleStream$2;-><init>(JILjava/util/function/DoubleUnaryOperator;DLjava/util/function/DoublePredicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(DLjava/util/function/DoubleUnaryOperator;)Ljj$/util/stream/DoubleStream;
    .registers 10

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/DoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-wide v5, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/DoubleStream$1;-><init>(JILjava/util/function/DoubleUnaryOperator;D)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(D)Ljj$/util/stream/DoubleStream;
    .registers 4

    new-instance v0, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljj$/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->doubleStream(Ljj$/util/Spliterator$OfDouble;Z)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([D)Ljj$/util/stream/DoubleStream;
    .registers 2

    invoke-static {p0}, Ljj$/util/DesugarArrays;->stream([D)Ljj$/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method
