.class public final synthetic Ljj$/util/stream/Stream$-CC;
.super Ljava/lang/Object;
.source "Stream.java"


# direct methods
.method public static $default$dropWhile(Ljj$/util/stream/Stream;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    invoke-interface {p0}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    invoke-interface {p0}, Ljj$/util/stream/Stream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Stream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/Stream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/Stream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;

    return-object v0
.end method

.method public static $default$takeWhile(Ljj$/util/stream/Stream;Ljava/util/function/Predicate;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    invoke-interface {p0}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljj$/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljj$/util/Spliterator;ZLjava/util/function/Predicate;)V

    invoke-interface {p0}, Ljj$/util/stream/Stream;->isParallel()Z

    move-result v1

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljj$/util/stream/Stream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljj$/util/stream/Stream$$ExternalSyntheticLambda0;-><init>(Ljj$/util/stream/Stream;)V

    invoke-interface {v0, v1}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljj$/util/stream/Stream;

    return-object v0
.end method

.method public static $default$toList(Ljj$/util/stream/Stream;)Ljava/util/List;
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljj$/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Ljj$/util/stream/Stream$Builder;
    .registers 1

    new-instance v0, Ljj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0}, Ljj$/util/stream/Streams$StreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljj$/util/stream/Stream;Ljj$/util/stream/Stream;)Ljj$/util/stream/Stream;
    .registers 5

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Streams$ConcatSpliterator$OfRef;

    invoke-interface {p0}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v1

    invoke-interface {p1}, Ljj$/util/stream/Stream;->spliterator()Ljj$/util/Spliterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljj$/util/stream/Streams$ConcatSpliterator$OfRef;-><init>(Ljj$/util/Spliterator;Ljj$/util/Spliterator;)V

    invoke-interface {p0}, Ljj$/util/stream/Stream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-interface {p1}, Ljj$/util/stream/Stream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v1

    invoke-static {p0, p1}, Ljj$/util/stream/Streams;->composedClose(Ljj$/util/stream/BaseStream;Ljj$/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljj$/util/stream/Stream;

    return-object v2
.end method

.method public static empty()Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {}, Ljj$/util/Spliterators;->emptySpliterator()Ljj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/function/Supplier;)Ljj$/util/stream/Stream;
    .registers 4

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljj$/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava/util/function/Supplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/UnaryOperator;)Ljj$/util/stream/Stream;
    .registers 10

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Stream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ljj$/util/stream/Stream$2;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;Ljava/util/function/Predicate;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljj$/util/stream/Stream;
    .registers 8

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/util/stream/Stream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljj$/util/stream/Stream$1;-><init>(JILjava/util/function/UnaryOperator;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Ljj$/util/stream/Stream;
    .registers 3

    new-instance v0, Ljj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljj$/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljj$/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Ljj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Ljj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljj$/util/stream/Stream;
    .registers 3

    if-nez p0, :cond_7

    invoke-static {}, Ljj$/util/stream/Stream$-CC;->empty()Ljj$/util/stream/Stream;

    move-result-object v0

    goto :goto_11

    :cond_7
    new-instance v0, Ljj$/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljj$/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljj$/util/stream/StreamSupport;->stream(Ljj$/util/Spliterator;Z)Ljj$/util/stream/Stream;

    move-result-object v0

    :goto_11
    return-object v0
.end method
